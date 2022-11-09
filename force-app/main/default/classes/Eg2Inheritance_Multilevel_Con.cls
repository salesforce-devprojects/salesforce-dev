public Virtual  class Eg2Inheritance_Multilevel_Con Extends Eg2Inheritance_Multilevel_Acc {
    Public String Na {get;set;}
    Public String  Ph {get;set;}
    Public String  Re {get;set;}
    
    
    
    Public Void Con()
    {
        Try
        {
            Contact cc = new Contact();
            cc.LastName   = Na;
            cc.Phone  = Ph;
            insert cc;
            Re = 'The contact inserted sucessfully'+cc.AccountId;
            
            
        }
           Catch(Exception e)
           {
               Re = 'The contact is not inserted successfully '+e.getMessage();
           }
    
    
    
    }

}