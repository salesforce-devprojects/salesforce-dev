public class ThirdMethodWithList 
{
    
    @AuraEnabled
    Public Static List<Contact> Method()
    {
        List<Contact> cc = [Select id,Name,Phone from Contact];
        return cc;
    }

}