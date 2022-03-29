const cds = require('@sap/cds')

const xsenv = require('@sap/xsenv')
const fetch = (...args) => import('node-fetch').then(({ default: fetch }) => fetch(...args));

const sWrkflwDestination = "wm_workflow";
let oDestinationService;
let oUaaService;
let sDestServiceCredentials;

try {
    oDestinationService = xsenv.getServices({ dest: { tag: 'destination' } }).dest;
    oUaaService = xsenv.getServices({ uaa: { tag: 'xsuaa' } }).uaa;
    sDestServiceCredentials = oDestinationService.clientid + ':' + oDestinationService.clientsecret;
} catch (error) {
    console.log(error);
}

class RequestorService extends cds.ApplicationService {

    async init() {

        const { Requests, Milestones, Questions, SAPDiscoveryCentreServiceDetails, RequestsService, RequestsNotes, RequestsAttachments, Status } = this.entities;

        this.before('NEW', Requests, async req => {
            // Set all new requests to "Draft Status"
            req.data.status_ID = 1;
        });

        this.on('SAVE', Requests, async (req, next) => {

            if (req.data.status_ID == 1 || req.data.status_ID == 2) {
                req.data.status_ID = 3;
            }

            // Create new workflow 
            var workflowStartPayload = {
                definitionId: "com.pg.myworkflow",

                context: {
                    employeeId: "Test12",
                    name: "Kamil from Service",
                    surname: "Muller from Service",
                    salary: 1123,
                    internal: true,
                    requestId: req.data.ID,
                }
            };
            var sUrl = '/rest/v1/workflow-instances';
            this._req = req;
            let oWorkfloData = await this._executeCall('POST', sUrl, workflowStartPayload, null);
            req.data.workflowId = oWorkfloData.id;
            return next();

        });

        // Actions ////////////////////////////////////////////
        this.on('actionApprove', async req => {
            let iStatus = req.data.status;
            let { ID, IsActiveEntity } = req.params[0];

            if (ID !== '5d057270-b7f2-4965-856b-1c5208d5b7a9') { // For tests of service task in btp 
                let tx = cds.tx(req);
                let sTaskId = await this.getCurrentTaskId(ID, Requests, req);
                // Call the service to complete the step 
                var workflowPayload = {
                    context: {
                        salary: 999
                    },
                    decision: "decision_approve",
                    status: "COMPLETED"
                };
                var sUrl = '/rest/v1/task-instances/' + sTaskId;
                this._req = req;
                let oWorkflowData = await this._executeCall('PATCH', sUrl, workflowPayload, null, true);

                if (IsActiveEntity === 'true') {
                    await tx.run(UPDATE(Requests).set({ status_ID: 4 }).where({ ID: ID }));
                    return await this.read(Requests, { ID, IsActiveEntity });
                } else {
                    await tx.run(UPDATE(Requests.drafts).set({ status_ID: 4 }).where({ ID: ID }));
                    return await this.read(Requests, { ID, IsActiveEntity });
                }

            } else {
                return { 
                    ID: "5d057270-b7f2-4965-856b-1c5208d5b7a9", 
                    description: "Descr - this is IT!", 
                    name: "Name", 
                    objectives: "Objes", 
                    prefix: "Prfix", 
                    workflowId: "aec9f82e-ab83-11ec-bf53-eeee0a95525a", 
                    status: { "ID": 4, "name": "In Progress" }, 
                    DraftAdministrativeData: null, 
                    IsActiveEntity: true, 
                    HasActiveEntity: false,
                    HasDraftEntity: false }
            } 
        });

        this.on('actionReject', async req => {
            let iStatus = req.data.status;
            let { ID, IsActiveEntity } = req.params[0];

            let tx = cds.tx(req);

            if (IsActiveEntity === 'true') {
                await tx.run(UPDATE(Requests).set({ status_ID: 2 }).where({ ID: ID }));
                return await this.read(Requests, { ID, IsActiveEntity });
            } else {
                await tx.run(UPDATE(Requests.drafts).set({ status_ID: 2 }).where({ ID: ID }));
                return await this.read(Requests, { ID, IsActiveEntity });
            }
        });

        this.on('actionComplete', async req => {
            let iStatus = req.data.status;
            let { ID, IsActiveEntity } = req.params[0];

            let tx = cds.tx(req);

            if (IsActiveEntity === 'true') {
                await tx.run(UPDATE(Requests).set({ status_ID: 5 }).where({ ID: ID }));
                return await this.read(Requests, { ID, IsActiveEntity });
            } else {
                await tx.run(UPDATE(Requests.drafts).set({ status_ID: 5 }).where({ ID: ID }));
                return await this.read(Requests, { ID, IsActiveEntity });
            }
        });

        return super.init();
    }

    async getCurrentTaskId(requestId, oRequestsEntity, oReq) {
        let oRequest = await SELECT.one.from(oRequestsEntity).columns("workflowId").where({ ID: requestId });
        var sUrl = '/rest/v1/task-instances?workflowInstanceId=' + oRequest.workflowId + "&status=READY";
        this._req = oReq;
        let oWorkflowData = await this._executeCall('GET', sUrl);
        return oWorkflowData[0].id;

    }

    async _getOAuthDestinationServiceToken() {
        let sDestBasicAuth = 'Basic ' + Buffer.from(sDestServiceCredentials).toString('base64');
        let oResponse = await fetch(oUaaService.url + '/oauth/token', {
            method: "POST",
            headers: {
                "Content-Type": "application/x-www-form-urlencoded",
                Accept: "application/json; charset=UTF-8",
                Authorization: sDestBasicAuth,
            },
            body: "grant_type=client_credentials&client_id=" + oDestinationService.clientid
        });
        if (oResponse.status >= 200 && oResponse.status <= 299) {
            const oJsonResponse = await oResponse.json();
            return oJsonResponse;
        } else {
            // Handle errors
            console.log(oResponse.status, oResponse.statusText);
        }
    }

    async _getDestinationConfiguration(oAuthDestinationAccessToken, sUserRequestJWTToken) {
        let oResponse = await fetch(oDestinationService.uri + '/destination-configuration/v1/destinations/' + sWrkflwDestination, {
            method: "GET",
            headers: {
                Accept: "application/json",
                Authorization: 'Bearer ' + oAuthDestinationAccessToken,
                'X-user-token': sUserRequestJWTToken
            }
        });
        if (oResponse.status >= 200 && oResponse.status <= 299) {
            const oJsonResponse = await oResponse.json();
            return oJsonResponse;
        } else {
            // Handle errors
            console.log(oResponse.status, oResponse.statusText);
        }
    }

    async _getTokens() {

        if (!this._userJwtAuthToken) {
            if (this._req.headers && this._req.headers.authorization && this._req.headers.authorization.startsWith("Bearer")) {
                this._userJwtAuthToken = this._req.headers.authorization.split(' ')[1].trim();
            }
        }
        if (!this._oDestinationToken) {
            this._oDestinationToken = await this._getOAuthDestinationServiceToken();
        }
        if (!this._oDestinationConfiguration) {
            this._oDestinationConfiguration = await this._getDestinationConfiguration(this._oDestinationToken.access_token, this._userJwtAuthToken);
        }
    }

    async _executeCall(sMethod, sUrl, oData, oParams, bAsText) {

        await this._getTokens();

        var oRequestObj = {
            method: sMethod,
            headers: JSON.parse('{"Accept": "application/json","Content-Type": "application/json","Authorization": "Bearer ' + this._oDestinationConfiguration.authTokens[0].value + '"}')
        }

        if (oData) {
            // oRequestObj.body = new URLSearchParams(oData);
            oRequestObj.body = JSON.stringify(oData);
        }

        let sTargetUrl = this._oDestinationConfiguration.destinationConfiguration.URL + sUrl;
        if (oParams) {
            sTargetUrl = sTargetUrl + "?" + querystring.stringify(oParams);
        }

        let oResponse = await fetch(sTargetUrl, oRequestObj);
        if (oResponse.status >= 200 && oResponse.status <= 299) {
            if (bAsText) {
                let oResponseAsText = await oResponse.text();
                return oResponseAsText;
            } else {
                let oResponseAsJson = await oResponse.json();
                return oResponseAsJson;
            }
        } else {
            // Handle errors
            console.log(oResponse.status, oResponse.statusText);
        }
    }
}

module.exports = { RequestorService }