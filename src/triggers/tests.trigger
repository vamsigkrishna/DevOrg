trigger tests on Lead (After insert) {
   
    List<Contact> contactsToCreate = new List<contact>();
   
   for(Lead l : Trigger.new ){
        if(l.Email <> null){
            Contact cont = new Contact();
            cont.FirstName= l.FirstName;
            cont.LastName= l.LastName;
            contactsToCreate.add(Cont);
         }
    }

    insert contactsToCreate;

}