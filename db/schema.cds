using { cuid, managed, sap } from '@sap/cds/common';

namespace com.pg.wrkflw.db;

entity Requests : cuid, managed {
    name        : String      @(
        title       : '{i18n>RequestName}',
        description : '{i18n>RequestNameDescription}'
    )                         @mandatory;
    prefix      : String(5)   @(
        title       : '{i18n>RequestPrefix}',
        description : '{i18n>RequestPrefixDescription}'
    );
    objectives  : String @(
        title       : '{i18n>RequestObjectives}',
        description : '{i18n>RequestObjectivesDescription}'
    )                         ;
    description : String @(
        title       : '{i18n>RequestDescription}',
        description : '{i18n>RequestDescriptionDescription}'
    )                         @mandatory;
    
}

annotate Requests with @fiori.draft.enabled {
    ID @(
        title                  : '{i18n>RequestKey}',
        description            : '{i18n>RequestKeyDescription}',
        Common.Text            : name,
        Common.TextArrangement : #TextFirst
    );
}
