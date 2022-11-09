public class MailingMessage
{
    
    @AuraEnabled
    Public Static  Void Main(String toadd,String Subject,String Msg,List<String> to)
    {
        Try
        {
        //Step 1 select single message 
        Messaging.SingleEmailMessage se = new Messaging.SingleEmailMessage();
        
        
        //Step2 : Prepare your data(means subject body,emails.....)
        
        List<String> to1 = new List<String>{'saikiran.gudivada009@gmail.com'};
       
         
          
            //Step3 :To compose email
           
            se.settoaddresses(to);
            se.setSubject(Subject);
            se.setPlainTextBody(Msg);
            
          //Step 4: Send email
        List<Messaging.Email> mm = new List<Messaging.Email>{se};
          
          Messaging.sendEmail(mm);
         
        }
        Catch(Exception e)
        {
            system.debug('The error msg is '+e.getMessage());
        }
            
       
        
    }

}