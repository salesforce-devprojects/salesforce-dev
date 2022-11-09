public class AccountCreationthroughLight
{
    
    //for this we have to use annotation and static method because in lightning everything is done by static
    
    @AuraEnabled
    Public Static String Acccreat(String nm,String Ph,String Fx,String Ind,Integer Al)
    {
        String res;
        Try
        {
            
        
        Account acc = new Account();
        acc.Name = nm;
        acc.Phone = Ph;
        acc.Fax   = Fx;
        acc.AnnualRevenue = Al;
        acc.Industry = Ind;
        insert acc;
        res = 'Account Created successfully with account id '+acc.Id;
        
        }
        Catch(Exception e)
        {
            res = 'Acc inserted failed with please check the errors '+e.getMessage();
        }
        
        return res;        
        
    }

}