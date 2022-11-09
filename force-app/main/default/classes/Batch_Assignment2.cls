Public class Batch_Assignment2 implements Database.Batchable<sobject>
{
    Public List<Opportunity> Start(Database.BatchableContext bc)
    {
        List<Opportunity> oo = new List<Opportunity>();
        oo = [Select id,Name,Amount from Opportunity];
        return oo;
    }
    Public Void Execute(Database.BatchableContext bc,List<Opportunity> cc)
    {
        List<Opportunity> ebin = new List<Opportunity>();
        for(Opportunity eao:cc)
        {
            if(eao.Amount!=Null && eao.Amount<100)
            {
                delete eao;
                ebin.add(eao);
            }
        }
        update ebin;
       
    }
    Public Void finish(Database.BatchableContext bc)
    {
        
    }

}