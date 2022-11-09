Public class SearchStringLigh 
{
    
    @AuraEnabled
    Public Static List<Contact> main(String stxt)
    {
        String st = '%'+stxt+'%';
        List<Contact> cc = [Select id,Name,Phone,Email from Contact where Name like :st];
        return cc;
        
    }

}