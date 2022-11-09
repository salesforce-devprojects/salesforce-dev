public class RetreviewingRecords_Ligh 
{
    
    
    
    Public Static List<Contact> allcont()    
    {
        List<Contact> cc = [Select id,LastName,Phone,Email from Contact where Phone<>Null and Email<>Null];
        return cc;
    }

}