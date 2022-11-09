public class Allform_Lightning 
{
    @AuraEnabled
    Public Static String Main(String Anm,Integer Al,String CamNm,String CamT)
    {
        String res;
        Acc(Anm,Al);
        Camp(CamNm,CamT);
        return res;
    }   
        
       Static Void Acc(String Anm,Integer Al)
        {
         
        Account aa = new Account();
        aa.Name = Anm;
        aa.AnnualRevenue = Al;   
         insert aa;
        
    }
    
    Static Void Camp(String CamNm, String CamT)
        {
        
        Campaign cc = new Campaign();
        cc.Name = CamNm;
        cc.Type = CamT;   
         insert cc;
        }
}