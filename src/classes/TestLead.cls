@isTest(SeeAllData=true)
public class TestLead{

    public static testMethod void testMe(){
        Lead l = new Lead();
        l.FirstName = 'testauto';
        l.LastName = 'lead';
        l.Company = 'NewCC';
        insert l;
        
        Lead l1 = [select id,Autonumber__c,FirstName from Lead where id=:l.Id];
        system.debug('l1' + l1.AutoNumber__c);
        
        Lead l2 = [select id,Autonumber__c from Lead where FirstName='testauto'];
        system.debug('l2' + l2.AutoNumber__c);   
        
        Lead l3 = [select id,Autonumber__c from Lead where AutoNumber__c like:l2.AutoNumber__c];
        System.debug('l3' + l3.AutoNumber__c);
    }
    
}