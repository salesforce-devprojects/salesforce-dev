public class BatchApex implements Database.Batchable<Sobject>
{
    Public List<sObject> Start (Database.BatchableContext Bc)
    {
        //here in Start method will write only for Retreiveial Purpose
        List<Account> aa = new List<Account>();
        aa = [Select id,Name from Account where Name = 'Sreeram'];
        
        return aa;
    }
    
    Public Void Execute(Database.BatchableContext Bc,List<Account> Ac)
    {
        List<Account> abin = new List<Account>();
        
        for(Account a:Ac)
        {
            if(a.Name =='Sreeram')
            {
                a.Name = 'Sachinrameshtendulkar';
                abin.add(a);
               
            }
        }
        update abin;
        
    }
    
    
    Public Void Finish(Database.BatchableContext Bc)
    {

    }

}