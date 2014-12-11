trigger OppTeam on Opportunity (after insert) {
	//List<OpportunityShare> sharesToCreate = new List<OpportunityShare>();
    //List<OpportunityTeamMember> oppteam1 = new List<OpportunityTeamMember>();
   /*
    if(trigger.new[0].OwnerId != null)
    {
        
    OpportunityShare oshare = new OpportunityShare();
    oshare.OpportunityAccessLevel = 'Edit';
    oshare.OpportunityId = trigger.new[0].Id;
    oshare.UserOrGroupId = trigger.new[0].Createdbyid;
    sharesToCreate.add(oshare);
   
    OpportunityTeamMember ot = new OpportunityTeamMember();
    ot.OpportunityId = trigger.new[0].Id;
    ot.UserId = trigger.new[0].OwnerId;
    ot.TeamMemberRole = 'Account Manager';
    oppteam1.add(ot);
    }
    
    if(oppteam1 != null && oppteam1.size() > 0)
    {
        insert oppteam1;
    }
    
    if(sharesToCreate != null && sharesToCreate.size() > 0)
    {
        list<Database.SaveResult> sr = Database.insert(sharesToCreate,false);
    }*/
}