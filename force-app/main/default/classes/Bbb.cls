Public class Bbb implements Database.Batchable<Sobject>
{
    Public List<sObject> Start(Database.BatchableContext ac)
    {
        List<Account> aa = new List<Account>();
        aa = [Select id,Phone from Account where Phone<>Null];
        return aa;
    }
    
    Public Void Execute(Database.BatchableContext al,List<Account> bb)
    {
        List<Account> ebin = new List<Account>();
        for(Account eac:bb)
        {
            if(eac.Phone!=Null)
            {
                eac.Phone = '2222';
                ebin.add(eac);
            }

        }
        update ebin;
        
    }
    
    
    Public Void Finish(Database.BatchableContext bc)
    {
        
    }

}