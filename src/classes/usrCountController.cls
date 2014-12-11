public with sharing class usrCountController {

public Map<string,Integer> getUsersCountMap(){
//get all the users
Map<Id,User> userList = new Map<Id,User>([Select Id,Name from User]);

//use aggregate soql to get the username & count of accounts for each user
List<AggregateResult> accCounts = [select Owner.Name uName,count(Id) uCount from account
                                   where ownerid in:userList.keySet()
                              group by Owner.Name];

//loop thru the result - for now i m just using system.debug to show the results.. but you can map/bind the values to vfpage table..
Map<String,Integer> userCountMap = new Map<String,Integer>();
for(AggregateResult ag : accCounts){
    userCountMap.put(string.valueof(ag.get('uName')) , integer.valueof(ag.get('uCount')));
}
return userCountMap;
}

}