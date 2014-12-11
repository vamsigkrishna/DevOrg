trigger trigOnTask on Task (after insert,after update) {

	// collection to map & store the leads ids and task creators from the tasks
	Map<Id,Id> leadMap = new Map<Id,Id>();

	// load the collection with unique lead ids with task creators from the incoming task collection   
	for(Task t :Trigger.new)
	{
        if(!leadMap.containsKey(t.whoId))
   			leadMap.put(t.whoId,t.createdById);
	}

	//query the leads
	List<Lead> leadsToUpdate = [Select Id,OwnerId from Lead where Id in:leadMap.keySet() and OwnerId = '00Qg0000001eZQxEEE'];
    
    //set the owner id of each lead to the task creator from the map we created above
    for(Lead l : leadsToUpdate){
        l.OwnerId = leadMap.get(l.Id);
    }
    
    // now update the leads back to database
	update leadsToUpdate;
    
}