public class BatchInsert implements Database.Batchable<Sobject>
{
    Public List<Batch_batch__c> Start(Database.BatchableContext bc)
    {
        List<Batch_batch__c> bb = new List<Batch_batch__c>{
            new Batch_batch__c(Name = 'BatchBatchBatch')
            
        };
        
        return bb;
        
    }
    Public Void Execute(Database.BatchableContext bc,List<Batch_batch__c> cc)
    {
       
        for(Integer i = 0;i<100;i++)
        {
           
            insert cc;
        }
        
    }
    Public Void Finish(Database.BatchableContext bc)
    {
        
    }
    
    
    
    

}