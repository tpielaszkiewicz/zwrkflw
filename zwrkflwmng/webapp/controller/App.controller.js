sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";
       
        return Controller.extend("com.pg.btp.zwrkflwmng.controller.App", {
            _token: "",
            _instanceId: "",
            onInit: function () {
                
            },

            getModulePath: function(){
                var appId = this.getOwnerComponent().getManifestEntry("/sap.app/id");
                var appPath = appId.replaceAll(".", "/");
                return jQuery.sap.getModulePath(appPath);
            },

            getCSRFToken: function (){
                return new Promise(function(resolve, reject){
                    if (this._token) {
                        resolve(this._token);
                    } else {
                        $.ajax({
                            url: this.getModulePath() + "/bpmworkflowruntime/v1/xsrf-token",
                            method: "GET",
                            headers: {
                                "X-CSRF-Token": "Fetch"
                            },
                            success: function (result, xhr, data) {
                                resolve(data.getResponseHeader("X-CSRF-Token"));
                            }.bind(this),
                            error: function(){
                                reject();
                            }
                        });
                    } 
                }.bind(this))
            },

            onStartInstance: async function(oEvent) {
                
                var workflowStartPayload = {
                definitionId: "com.pg.myworkflow",
                context: {
                    employeeId: "Test12",
                    name: "Kamil",
                    surname: "Muller from Service",
                    salary: 1123,
                    internal: true
                  }
                };

                this._token = await this.getCSRFToken();
                //start workflow 
                $.ajax({
                    url: this.getModulePath() + "/bpmworkflowruntime/v1/workflow-instances",
                    type: "POST",
                    data: JSON.stringify(workflowStartPayload),
                    headers: {
                        "X-CSRF-Token": this._token,
                        "Content-Type": "application/json"
                    },
                    success: function(result, xhr, data) {
                        let oText = this.getView().byId("instanceId");
                        oText.setText(result.id);
                        this._instanceId = result.id;
                        this.updateCurrentTaskId();
                        this.updateWorkflowStatus();
                    }.bind(this),
                    error: function (oError){
                        console.log(oError);
                    }
                });
            },

            updateCurrentTaskId: function () {
                $.ajax({
                    url: this.getModulePath() + "/bpmworkflowruntime/v1/task-instances?workflowInstanceId=" + this._instanceId + "&status=READY",
                    method: "GET",
                    success: function (result, xhr, data) {
                        this._taskId = (result && result.length !== 0) ? result[0].id : "";
                        let oText = this.getView().byId("taskId");
                        oText.setText(this._taskId);
                    }.bind(this), 
                    error: function(oError){
                    }
                });
            },

            updateWorkflowStatus: function () {
                $.ajax({
                    url: this.getModulePath() + "/bpmworkflowruntime/v1/workflow-instances/" + this._instanceId,
                    method: "GET",
                    success: function (result, xhr, data) {
                        let oText = this.getView().byId("workflowStatusId");
                        oText.setText(result.status);
                    }.bind(this), 
                    error: function(oError){
                    }
                });
            },

            onTaskApprove: function(oEvent) {
                var oDecInput = this.getView().byId("decisionInput");
                var workflowStartPayload = {
                    context: {
                        salary: 999
                    },
                    decision: oDecInput.getValue(),
                    status: "COMPLETED"
                }
                $.ajax({
                    url: this.getModulePath() + "/bpmworkflowruntime/v1/task-instances/" + this._taskId,
                    type: "PATCH",
                    data: JSON.stringify(workflowStartPayload),
                    headers: {
                        "X-CSRF-Token": this._token,
                        "Content-Type": "application/json"
                    },
                    success: async function(result, xhr, data) {
                        this.updateCurrentTaskId();
                        this.updateWorkflowStatus();
                    }.bind(this),
                    error: function (oError){
                        console.log(oError);
                    }
                })
            }
        });
    });
