public with sharing class Getting_acc_list 
{
    
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccList()
    {
        return [Select id,Name from Account limit 10];

    }

    
}
