public class showGroupController {

    String[] selectedGroups = new String[]{};
    public String[] getSelectedGroups() {
        return selectedGroups;
    }
                
    public void setSelectedGroups(String[] groups) {
        this.selectedGroups = groups;
    }
        
    List<SelectOption> AllPublicGroups;
    public List<SelectOption> getAllPublicGroups()
    {
        if(AllPublicGroups == null){
            AllPublicGroups = new List<SelectOption>();
            for(Group g : [Select Id,Name from Group where Type = 'Regular']){
               AllPublicGroups.add(new SelectOption(g.Id,g.Name));
            }    
        }
        return AllPublicGroups;    
    }

}