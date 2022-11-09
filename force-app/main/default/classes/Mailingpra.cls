public class Mailingpra
{
    
    Public Static Void Main()
    {
        
        //Step 1 Intiallization of Single email msg
       
         Messaging.SingleEmailMessage ss = new Messaging.SingleEmailMessage();
        
        //Step 2 : Prepare your data
        
        List<String> se = new List<String>{'chaluvaditanuja10@gmail.com'};
        
            
            //Step3 prepare the body subject 
           
           ss.setToAddresses(se);
        ss.setSubject('Good mrng');
         ss.setPlainTextBody('Good Mrng  Busy madam ');
           
        //Step 4 send the msg
        
        List<Messaging.Email> em = new List<Messaging.Email>{ss};
        Messaging.sendEmail(em);
        
        
    }

}