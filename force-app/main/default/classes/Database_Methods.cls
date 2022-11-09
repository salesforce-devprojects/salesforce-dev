public class Database_Methods 
{
    
    
    Public Void Main()
    {
        DatabasInser();
        DatabasUpdate();
        DatabaseDele();
        
    }
      Void DatabasInser()
      {
          List<Account> aa = new List<Account>{
    new Account(Name = 'Sachinsaisaisai',Phone = '010203',AnnualRevenue= 100),
    new Account(Name = 'Testtestest',Phone = '0102',AnnualRevenue= 100),
    new Account(AnnualRevenue= 100)
};
    
   Database.SaveResult [] res = Database.insert(aa, false);
          
          for(Database.SaveResult sr :res)
          {
              if(sr.isSuccess())
              {
                  system.debug('The records are succesffuly inserted '+sr.getId());
              }
              else
              {
                  for(Database.Error er : sr.getErrors())
                  {
                      system.debug('The errors are '+er.getMessage());
                  }
                  
              }
          }

      }
    
    Void DatabasUpdate()
     {
      List<Account> aa = new List<Account>();
         aa = [Select id,Name,Phone from Account where Phone ='9999'];
         
         List<Account> upa = new List<Account>();
         for(Account eca:aa)
         {
             if(eca.Phone =='9999')
             {
                 eca.Phone = '8888';
             }
             upa.add(eca);
         }
         
         Database.SaveResult [] sr = Database.update(upa, false);
         
         for(Database.SaveResult ss :sr)
         {
             if(ss.isSuccess())
             {
                 system.debug('The account is updated '+ss.getId());
             }
         
             
             else
             {
                 for(Database.Error ee : ss.getErrors())
                 {
                     system.debug('The acccount is not updated '+ee.getMessage());
                 }
             }
         }
             

     }
    
      Void DatabaseDele()
      {
        Account[] aa = [SELECT Id, Name FROM Account WHERE Name = 'zakir']; 
        Database.DeleteResult[] de = Database.delete(aa);
            
     }
    
    
    
}