trigger trigUpdAccntOwner on Contact (after insert,after update) {

    Map<Id, Id> accountOwnerIdMap = new Map<Id, Id>();

    // all the accounts whose owner ids to look up
    for ( Contact c : Trigger.new ) {
        if(!accountOwnerIdMap.containsKey(c.accountId))
        	accountOwnerIdMap.put( c.accountId,c.ownerId );
    }
   
    // look up each account owner id
    List<Account> accntsToUpdate = [ SELECT id, ownerId FROM Account WHERE id in :accountOwnerIdMap.keySet() ];
    
    for(Account acc : accntsToUpdate){
        acc.OwnerId = accountOwnerIdMap.get(acc.Id);
    }

    update accntsToUpdate;   
}