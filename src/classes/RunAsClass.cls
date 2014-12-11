public without sharing class RunAsClass{

    public string returnName(){
    	return 'test';
    }
    
    public void parseJson(string rrFormData) {
        system.debug(rrFormData);
        system.debug(JSON.deserializeUntyped(rrFormData));
        Map<String, Object> root = (Map<String, Object>)JSON.deserializeUntyped(rrFormData);
        system.debug(root);
        List<Object> items = (List<Object>)root.get('items');
        for (Object item : items) {
            Map<String, Object> i = (Map<String, Object>)item;
            System.debug(i.get('id'));
        }
    }
}