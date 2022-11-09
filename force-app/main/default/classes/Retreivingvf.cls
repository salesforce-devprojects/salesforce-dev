Public class Retreivingvf 
{
  
    Public List<Opportunity> cc {get;set;}
    Public String st        {get;set;}
   // Public Opportunity selectedOp  {get;set;}
    /*
    Public PageReference updateSystems()
    {       
        insert selectedOp;
        system.debug(selectedOp);
        
        return null;
    }
 
    */
    Public Void Main()
    {
       String st ='Select id,Name,Type,Amount from Opportunity where name like \'%'+st+'%\'';
        cc= Database.query(st);
        

    }

}