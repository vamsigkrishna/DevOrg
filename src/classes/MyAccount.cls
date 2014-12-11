public with sharing class MyAccount {

    public MyAccount(ApexPages.StandardController controller) {
        if(controller != null && controller.getId() != null)
            acc = new Account(Id = controller.getId());
        else
            acc = new Account();    
    }


    public Account acc {get; set; } 
   
        
    public PageReference store(){
        insert acc;
        PageReference p = new PageReference('/apex/hello?id='+acc.Id);
        p.setRedirect(true);
        return p;
    }

}