public class BatchContact implements Database.Batchable<Sobject>
{
    
    Public List<Account> Start(Database.BatchableContext bc)
    {
        List<Account> cc = new List<Account>();
          cc = [Select id,Name,Phone from Account];
        return cc;                                                 //1585 records
        
    }
    
    Public Void Execute(Database.BatchableContext bc,List<Account> el)  //el = 1585
    {
        List<Account> ebinc = new List<Account>();
        for(Account eac:el)
        {
            if(eac.Name!=Null&& eac.Phone!=Null)
            {
                eac.Name = 'BatchAPex1';
                eac.Phone = '6666';
                ebinc.add(eac);
            }
        }
        update ebinc;
        
    }
    Public Void Finish(Database.BatchableContext bc)
    {
        
    }

}