@isTest(seealldata=true)
public class UnitTest{

    static testmethod void unitTestMethod(){
    	User u = [select Id,LastLoginDate,Division,Email from User
     where  LastLoginDate != null
     and isActive=true order by LastLoginDate desc limit 1];
        system.debug('user ' + u);
    }
}