global class Test
{
    public static void applyDiscount()
    {
        try
        {
            //fetching record from contact.
            List<contact> contactList = new List<contact>([Select FirstName,LastName,AccountId,Birthdate 
From contact where Contact.Department = 'Paid In Full' ]);
           
            //for creating new opportunity.
            List<Opportunity> newOpps=new List<Opportunity>();
           
            for(Contact c:contactList)
            {
                Opportunity opp=new Opportunity();
                opp.Name=c.FirstName+c.LastName+'Opportunity';
                opp.CloseDate=c.Birthdate;
                opp.Type='New Customer';
                opp.StageName='Prospecting';
                opp.AccountId=c.AccountId;
                newOpps.add(opp);
            }
            insert newOpps;
        }
        catch(Exception e)
        {
           System.debug(e);
        }
    }
}