public Virtual class Eg2Inheritance_Multilevel_Acc {
    
    Public String Nm {get;set;}
    Public String  Indus {get;set;}
    Public String  Ra {get;set;}
    Public Integer AR {get;set;}
    Public String  res {get;set;}
    

    Public Void Acc()
    {
        Try
        {
            Account a = new Account();
            a.Name = Nm;
            a.Industry = Indus;
            a.Rating   = Ra;
            a.AnnualRevenue  = AR;
            insert a;
            
            res = 'The Account is successfully inserted '+a.Id;
                  
        }
        Catch(Exception e)
        {
           res = 'The Account insertion failed'+e.getMessage();
        }
        
        
        
    }
}