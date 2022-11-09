public with sharing class Account_get 
{
    @AuraEnabled(cacheable=true)
    public Static List<Account> getAccount()
    {
        return [Select id,Name,Industry from Account where Industry='Banking'];

    }
    
}
