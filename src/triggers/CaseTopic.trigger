trigger CaseTopic on Case (after insert,after update) {
	List<TopicAssignment> taList = new List<TopicAssignment>();
    for(Case c : trigger.new){
		TopicAssignment ta = new TopicAssignment();
		ta.TopicId = '0TO90000000Gr8s';
		ta.EntityId = c.Id;	
        taList.add(ta);
    }
	insert taList;    
}