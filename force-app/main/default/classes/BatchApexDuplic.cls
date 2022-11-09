Public class BatchApexDuplic implements Database.Batchable<Sobject>
{
    Public List<Account> Start(Database.BatchableContext bc)
    {
        List<Account> aa = new List<Account>();
        aa = [Select id,Name from Account where Name = 'Batchtest'];
             
        return aa;
        
    }
   
    Public Void Execute(Database.BatchableContext bc,List<Account> al)
    {
   integer count = 0;
        

    for(Account a :al)
    {
       if(a.Name =='Batchtest')
       {
           a.Name = 'Batchapex1';
           update al;
       }
    
 
    
      }
        
}
    
    
    Public Void Finish(Database.BatchableContext bc)
    {
        
    }
    
    

}