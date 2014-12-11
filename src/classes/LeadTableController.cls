public class LeadTableController {
    
    private List<Lead> leads;
    public List<Lead> LeadTable
    {
        get
        {
            String leadId = ApexPages.currentPage().getParameters().get('Id');
            leads = [Select Id, Name, ParentLead__r.Name from Lead where id=:leadId];
            return leads;
        }
    }
    
    public Lead OneLead
    {
        get
        {
            return leads[0];
        }
    }
    
    public void LeadTableController(){
        
        
    } 
}