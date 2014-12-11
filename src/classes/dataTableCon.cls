public class dataTableCon {

    public PageReference testM() {
        return Page.hello;
    }

public List<Case> fb;

     public List<Case> getAccounts() {
       fb= [SELECT Id,
                   Owner.name,LastModifiedDate,
                   (SELECT CommentBody,LastModifiedDate
                   FROM CaseComments)
                   FROM Case];
        return fb;
    }   

public PageReference save()
{
    List<CaseComment> cc = new List<CaseComment>();
    for(Case c : fb){
        if(c.CaseComments != null && c.CaseComments.size() > 0)
          cc.addAll(c.CaseComments);
    }
    upsert cc;
    return null;
    
}
public PageReference doSave()
{
    upsert fb;
    return null;
}
public PageReference del()
{
    return null;
}
}