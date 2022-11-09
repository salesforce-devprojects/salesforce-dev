public Virtual class Eg2Inheritance_Multilevel_Lead extends Eg2Inheritance_Multilevel_Con {
    Public String Nam {get;set;}
    Public String CC {get;set;}
    Public String  SS {get;set;}
    Public String res {get;set;}
    
    Public Void Le()
    {
        Try
        {
            Lead ll  = new Lead();
            ll.LastName   = Nam;
            ll.Company  = CC;
            ll.LeadSource  = SS;
            insert ll;
            res = 'The Lead inserted sucessfully'+ll.Id;
            
            
        }
           Catch(Exception ee)
           {
               res = 'The Lead is not inserted successfully '+ee.getMessage();
           }
    

}
}