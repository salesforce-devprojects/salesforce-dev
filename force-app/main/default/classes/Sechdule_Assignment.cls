Public class Sechdule_Assignment implements Schedulable
{
    Public Void Execute(Schedulablecontext ss)
    {
        BatchApex_Assignment bb = new BatchApex_Assignment();
        Database.executeBatch(bb);
        
    }
    

}