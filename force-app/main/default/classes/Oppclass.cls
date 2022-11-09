public class Oppclass {
    
    
    Public Void Main()
    {
        for(Opportunity oo :([Select id,Amount from Opportunity where Amount>500] ))
         {
             if(oo.Amount>100&&oo.Amount<500)
             {
                 Account a = new Account();
                 a.Name = 'BBBAAABBB';
                 a.Phone = '77652';
                 a.AnnualRevenue = 889;
                 insert a;
             }
             else
             {
                 system.debug('NO account created');
             }
             
             
         }
    }

}