trigger updateCampaignfromCM on CampaignMember (before insert) {

  Map<ID, Campaign> parentCams = new Map<ID, Campaign>();
  List<Id> listIds = new List<Id>();

  for (CampaignMember childObj : Trigger.new) {
    listIds.add(childObj.CampaignId);
  }

       parentCams = new Map<Id, Campaign>([SELECT id, Name FROM Campaign WHERE ID IN :listIds]);

  for (CampaignMember childObj: Trigger.new){
     Campaign myParentCams = parentCams.get(childObj.CampaignId);
     
  }

  update parentCams.values();

}