public class MutlipleEmail
{
    
   Public Void Main()
   {
       
      //Step 1 Multiple email mssg
      
       Messaging.MassEmailMessage ma = new Messaging.MassEmailMessage();
      
       List<Contact> cc = new List<Contact>();
       List<id> ii = new List<id>();
      
        cc = [select id,Phone from Contact where Phone = '8888'];
        
         for(Contact ca: cc)
        {
             ii.add(ca.id);     
                
        }
       
       Emailtemplate Et = [Select id from Emailtemplate where name = 'Good mrng'];
        
       //Compose email
         ma.setTargetObjectIds(ii);
         ma.setTemplateId(Et.Id);
         ma.setSenderDisplayName('Meeeeeeeeeeeeeeeeeeeeeeeeeeee');
       
       
       //Send the email
        
       List<Messaging.Email> sen = new List<Messaging.Email>{ma};
       Messaging.sendEmail(sen);
            
        }
       
       
     

}