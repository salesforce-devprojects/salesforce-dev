Public class Batch_Apex_Eg1 implements Database.Batchable<sObject>
{
    
  //Start Method Syntax
  Public List<Account> Start(Database.BatchableContext bc)
  {
      List<Account> aa = new List<Account>();
      aa = [Select id,Name from Account];         //
      return aa;
      
      
  }
    
  //Exceute Method
  Public Void Execute(Database.BatchableContext bc,List<Account> ll)
  {
     List<Account> eacc = new List<Account>(); 
    for(Account aa :ll)
    {
        if(aa.Name!=Null)
        {
            aa.Name = 'BatchApexnew';
            eacc.add(aa);
        }
        

    }
      update eacc;
      
      
  }
    //Finish Method
   
    Public Void Finish(Database.BatchableContext bc)
    {
       Case cc = new Case();
       cc.Subject = 'this case is created by using batch apex';
        Database.insert(cc,false);
        
    }
    

}