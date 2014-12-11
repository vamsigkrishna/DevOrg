public class mycontroller {

public string baseURL {
get{
return URL.getSalesforceBaseUrl().toExternalForm();
}
}

    public PageReference check(){
        String requestUrl = '/setup/org/orgstorageusage.jsp?id='+UserInfo.getOrganizationId();
    Http http = new Http();
    HttpRequest req = new HttpRequest();        
    req.setEndpoint(URL.getSalesforceBaseUrl().toExternalForm() + requestUrl);        
    req.setMethod('GET');
    req.setHeader('Authorization', 'Bearer ' + UserInfo.getSessionId());        
    system.debug(req);
    HTTPResponse res = http.send(req);    
    string response = res.getBody();
    system.debug(response);
    return null;
    }
    
    public mycontroller(ApexPages.StandardController controller) {

    }

public apexpages.standardsetcontroller sc2{get;set;}
public list<account> acclist{get;set;}
public mycontroller()
{ 
acclist = [select name from account limit 10];   
sc2 = new apexpages.standardsetcontroller(acclist);
//acclist = (list<account>)sc2.getrecords();

}
}