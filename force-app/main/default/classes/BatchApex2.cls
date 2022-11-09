public class BatchApex2 implements Database.Batchable <Sobject>
{
    Public database.QueryLocator start(Database.BatchableContext bc)
    {
        return database.getQueryLocator('Select id,Name from Batch_batch__c');
        
    }
    Public Void Execute(Database.BatchableContext bc,List<Batch_batch__c> ss)
    {
        Ins();
       
        
    }
    Public Void Finish(Database.BatchableContext bc)
    {
        
    }
    
   	Void Ins()
    {
    List<Batch_batch__c> bb = new List<Batch_batch__c>();
        for(Integer i = 0;i<1000;i++)
        {
            Batch_batch__c cc = new Batch_batch__c(Name = 'BatchApex2');
            bb.add(cc);
        }
        insert bb;
    }
}