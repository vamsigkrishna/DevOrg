trigger TriggerUpdateAccDate on Task (after insert) {
	Map<Id,Date> accIds = new Map<Id,Date>();
    for(Task t : trigger.new){
    	accIds.put(t.AccountId,Date.valueOf(t.CreatedDate));
    }
    List<Account> acctsToUpdate = [Select Id,SLAExpirationDate__c from Account where id in:accIds.keySet()];
    for(Account acc : acctsToUpdate){
    	acc.SLAExpirationDate__c = accIds.get(acc.Id);
    }
	update acctsToUpdate;    
}