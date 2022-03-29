using RequestorService as service from '../../srv/requestor-service';

annotate service.Requests with @(
    UI.Identification        : [
           {
                $Type  : 'UI.DataFieldForAction',
                Action : 'RequestorService.actionApprove',
                Label  : 'Approve'
            },
            {
                $Type  : 'UI.DataFieldForAction',
                Action : 'RequestorService.actionReject',
                Label  : 'Reject'
            },
            {
                $Type  : 'UI.DataFieldForAction',
                Action : 'RequestorService.actionComplete',
                Label  : 'Complete'
            }
        ],
    UI.LineItem : [
        {
                $Type  : 'UI.DataFieldForAction',
                Action : 'RequestorService.actionApprove',
                Label  : 'Approve'
            },
            {
                $Type  : 'UI.DataFieldForAction',
                Action : 'RequestorService.actionReject',
                Label  : 'Reject'
            },
            {
                $Type  : 'UI.DataFieldForAction',
                Action : 'RequestorService.actionComplete',
                Label  : 'Complete'
            },
        {
            $Type : 'UI.DataField',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Value : prefix,
        },
        {
            $Type : 'UI.DataField',
            Value : objectives,
        },
        {
            $Type : 'UI.DataField',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Value : status.name,
        },
        {
            $Type : 'UI.DataField',
            Value : workflowId,
        }
    ]
);
annotate service.Requests with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Value : prefix,
            },
            {
                $Type : 'UI.DataField',
                Value : objectives,
            },
            {
                $Type : 'UI.DataField',
                Value : description,
            }, 
            {
                $Type : 'UI.DataField',
                Value : status.name,
            },
            {
                $Type : 'UI.DataField',
                Value : workflowId,
            }
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
) {
    workflowId @readonly
};
