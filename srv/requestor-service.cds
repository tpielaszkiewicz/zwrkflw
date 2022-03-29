using {com.pg.wrkflw.db as capbtpform} from '../db/schema';

//@path: '/browse'
service RequestorService {
   
    @readonly  @cds.odata.valuelist
    entity Status                           as projection on capbtpform.Status;

    @odata.draft.enabled 
    entity Requests                         as projection on capbtpform.Requests actions {
        action actionChangeStatus(status : Integer) returns Requests;
        action actionApprove( ) returns Requests;
        action actionReject( ) returns Requests;
        action actionComplete( ) returns Requests;
    };
}

annotate RequestorService.Requests with @(Capabilities : {
    InsertRestrictions : {Insertable : true},
    UpdateRestrictions : {Updatable : true},
    DeleteRestrictions : {Deletable : true}
})  {
    ID        @Core.Computed;
}

