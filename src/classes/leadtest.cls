public class leadtest {

    public PageReference save() {
        ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'Save successfully'));
        return null;
    }

}