using {com.pg.wrkflw.db as capbtpform} from '../db/schema';

//@path: '/browse'
service RequestorService {
    @odata.draft.enabled
    entity Requests as projection on capbtpform.Requests;
}

annotate RequestorService.Requests with @(Capabilities : {
    InsertRestrictions : {Insertable : true},
    UpdateRestrictions : {Updatable : true},
    DeleteRestrictions : {Deletable : true}
})  {
    ID        @Core.Computed;
}

