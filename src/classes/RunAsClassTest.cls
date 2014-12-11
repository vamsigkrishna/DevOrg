@isTest
public class RunAsClassTest{

    static testMethod void RequestedResourceDecisionCriteriaTest()
    {
        String json = '{'+
    '    \"items\": ['+
    '        {'+
    '            \"id\": \"pn0\",'+
    '            \"postalcode\": \"0\",'+
    '            \"contactnumber\": \"pc0\"'+
    '        },'+
    '        {'+
    '            \"id\": \"pn1\",'+
    '            \"postalcode\": \"1\",'+
    '            \"contactnumber\": \"pc1\"'+
    '        },'+
    '        {'+
    '            \"id\": \"pn2\",'+
    '            \"postalcode\": \"2\",'+
    '            \"contactnumber\": \"pc2\"'+
    '        }'+
    '    ]'+
    '}';
        

        RunAsClass objReqResDecCrit = new RunAsClass();
        objReqResDecCrit.returnName();
           objReqResDecCrit.parseJson(json);
       
        system.assert(objReqResDecCrit != null);

    }
}