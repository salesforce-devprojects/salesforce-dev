public class FirstMethodPassParama 
{
    
    @AuraEnabled
    Public Static String Main(String St,String Ph,String Ind,Integer Al)
    {
        String Res;
       Account aa = new Account();
        aa.Name = St;
        aa.Phone = Ph;
        aa.Industry = Ind;
        aa.AnnualRevenue = Al;
        Insert aa;
       Res = 'The account is successfully inserted with account id '+aa.id;
        return res;
    }

}