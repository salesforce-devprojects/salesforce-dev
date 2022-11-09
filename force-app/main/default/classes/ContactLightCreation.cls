public class ContactLightCreation 
{
    
    //Method
    @AuraEnabled
    Public Static String Concre(String Nm,String Ph)
    {
        String res;
       Contact cc = new Contact();
       cc.LastName = 'SaiKiran';
       cc.Phone     ='999999';
       insert cc;
       res = 'Contact is created sucessfully '+cc.Id;
        return res;
        
        
    }

}