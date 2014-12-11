trigger trigOnTaskToUpdAccntField on Task (after insert,after update) {
    
    //get task created date & Account id for tasks with created by email match
    List<Account> accountsToCreate = new List<Account>(); 
    for(Task t : trigger.new){
        if(t.Description == 'test'){
    		Account acc = new Account();
            acc.Name = 'new test account';
			accountsToCreate.add(acc);            
        }
    }
    insert accountsToCreate;
}