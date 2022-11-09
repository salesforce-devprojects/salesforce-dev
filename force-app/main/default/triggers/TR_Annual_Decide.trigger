trigger TR_Annual_Decide on Account (before insert,before update) 
{
    if(Trigger.isbefore)
    {
        
    List<Account> aa = Trigger.new;
     for(Account eac:aa)
     {
         if(eac.AnnualRevenue == 100)
         {
             eac.NumberOfEmployees = 30;
         }
     }
        
    }
    if(Trigger.isupdate)
    {
        List<Account> ab = Trigger.new;
        for(Account ea:ab)
        {
            if(ea.AnnualRevenue == 55)
            {
                ea.NumberOfEmployees = 44;
            }
            
        }
    }

}