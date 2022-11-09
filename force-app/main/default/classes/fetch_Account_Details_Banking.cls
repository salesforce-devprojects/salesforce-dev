public with sharing class fetch_Account_Details_Banking 
{
    
    
    @AuraEnabled(cacheable=true)
    public static List<Account> getContactList() {
        return [
            SELECT Id, Name,Industry
            FROM Account
            Where Industry='Banking'
            LIMIT 10
        ];
    }
    
}
