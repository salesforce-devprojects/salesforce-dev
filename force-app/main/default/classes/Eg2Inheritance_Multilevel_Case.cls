public class Eg2Inheritance_Multilevel_Case extends Eg2Inheritance_Multilevel_Lead{
    Public String Su {get;set;}
    Public String  St {get;set;}
    Public String  Pt  {get;Set;}
    Public String resu {get;set;}
    
    
    
    
     Public Void TT()
    {
        Try
        {
            Task tt  = new Task();
            tt.Status   = St;
            tt.Subject  = Su;
            tt.Priority = Pt;
            insert tt;
            resu = 'The Task inserted sucessfully'+tt.AccountId;
            
            
        }
           Catch(Exception et)
           {
               resu = 'The Task is not inserted successfully '+et.getMessage();
           }
    

}

}