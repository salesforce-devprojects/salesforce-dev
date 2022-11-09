public class DeleteContactbatch implements Database.Batchable<sobject>
{
    Public List<Batch_batch__c> Start(Database.BatchableContext bc)
    {
        List<Batch_batch__c> ac = [Select id from Batch_batch__c];
        return ac;
        
    }
    
    Public Void Execute(Database.BatchableContext bc,List<Batch_batch__c> cc)
    {
        delete cc;
    }
    Public Void Finish(Database.BatchableContext bc)
    {
        
    }
    
    Void Main()
    {
        
    }

}