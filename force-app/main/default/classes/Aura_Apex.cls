public class Aura_Apex {
    
    @AuraEnabled
    Public static void Acc()
        
    {
        Account aa = new Account();
        aa.Name = 'xyz';
        aa.Phone = '77777';
        aa.AnnualRevenue = 2238;
        aa.Industry = 'Agri';
        aa.Rating  = 'Hot';
        insert aa;
    }

}