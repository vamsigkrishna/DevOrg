trigger Duplicate_email on Lead (before insert, before update) {

    map<string, Lead> leadMap = new map<string, Lead>();

    for(Lead lead : system.trigger.new){

    if((lead.Email != null) && (system.Trigger.isInsert || (lead.Email == system.trigger.oldMap.get(lead.id).Email))){

        if(leadmap.ContainsKey(lead.Email)){
            lead.Email.addError('Another new lead has the' + ' same email address');
        }else{
            leadMap.put(lead.Email, Lead);
        }
    }
    }

   /* for(Lead lead : [SELECT Email FROM Lead WHERE Email IN : leadMap.keySet()]){
        Lead newLead = leadmap.get(lead.Email);
        newLead.Email.addError('A lead with this email address'+' already exist');
    } */

    for(Lead lead : [SELECT Email FROM Lead WHERE Email IN : leadMap.keySet()]){
    Lead newLead = leadmap.get(lead.Email);
    if(!leadmap.get(lead.Email).CheckButton__c && lead.Id != newLead.Id){
        system.debug('@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@');
         newLead.Email.addError('A lead with this email address already exists. If you still want to enter a new lead with this email, select the Allow Duplicate checkbox to proceed');
    }
} 
}