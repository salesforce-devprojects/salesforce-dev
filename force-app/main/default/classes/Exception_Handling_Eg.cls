public class Exception_Handling_Eg
{
    
    Public Static Void Main()
    {
        Try
        {
       
            
         Account cc = new Account();
         cc.Phone = '77';
       
      
         cc.Rating = 'Too Hot';
         insert cc;
           
        }
        Catch(Exception shabnam)
        {
            system.debug('The account is not created and error is'+shabnam.getMessage());
        
        Contact ca = new Contact();
         ca.LastName = 'mounika';
         ca.Phone    = '776262';
         insert ca;
         
        }
        
        
    }

}