public class Mmms 
{
    
    Public Void Main()
    {
        //Step1 Function to the message selecting single message
        
        Messaging.SingleEmailMessage ss = new Messaging.SingleEmailMessage();
        
       //Step 2 : Prepare your data
       
        List<String> se = new List<String>{'sreramvempati@gmail.com'};
        
        //Step 3:Compose mail
        ss.setToAddresses(se);
        ss.setSubject('This is Email Subject');
        ss.setPlainTextBody('Hello guru ela Unav');
        
        //Send Email
        List<Messaging.Email> mm = new List<Messaging.Email>{ss};
        Messaging.sendEmail(mm);
  
            }

}