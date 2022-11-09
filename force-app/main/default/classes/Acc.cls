public class Acc
{
    
    
    Public Void Main(String Nm,String Ind,String Ra,Integer An)
    {
        try
        {
            
            Account aa = new Account();
            aa.Name = Nm;
            aa.AnnualRevenue = An;
            aa.Industry = Ind;
            aa.Rating = Ra;
            insert aa;
            System.debug('The account created successfully '+aa.Id);
            
            
        }
        Catch(Exception e)
        {
            system.debug('The account creation failed '+e.getMessage());
        }
    }

}