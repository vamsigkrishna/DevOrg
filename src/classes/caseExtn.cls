public class caseExtn {

    private string pageURL;
    
    public string CasePageURL{
        get{
            return pageURL;
        }
    }
    public caseExtn(ApexPages.StandardController controller) {
        pageURL = controller.view().getHeaders().get('Referer');
    }

    public Solution caseSolution{
    get{
        if(caseSolution == null)
            caseSolution = new Solution();
        return caseSolution;
    }
    set;
    }
        
    public PageReference saveSolution(){
        
        insert caseSolution;
        return null;
    }
}