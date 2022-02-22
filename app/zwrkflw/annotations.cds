using RequestorService as service from '../../srv/requestor-service';

annotate service.Requests with @(
    UI.LineItem : [
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
);
