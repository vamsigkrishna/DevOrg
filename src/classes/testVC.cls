public class testVC {

String srcWorkout = ApexPages.currentPage().getParameters().get('Id');
String query = 'SELECT Id, Name FROM Account WHERE Id = \'' + srcWorkout + '\'';
public testVC(){
}

public PageReference saveRefresh(){
    PageReference pageRef = new PageReference(ApexPages.currentPage().getUrl());
        pageRef.setRedirect(true);
        return pageRef;
}

}