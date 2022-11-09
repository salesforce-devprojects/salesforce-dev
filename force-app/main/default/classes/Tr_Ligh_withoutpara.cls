public class Tr_Ligh_withoutpara
{
    @AuraEnabled
    Public Static List<Contact> allcon()
    {
        List<Contact> cc = [Select id,LastName,Phone,Email from Contact];
        return cc;
    }

}