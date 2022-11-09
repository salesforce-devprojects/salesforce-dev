public class Maimessagethrou_vf 
{
    Public String Sndto {get;set;}
    Public String Sub   {get;set;}
    Public String Msg   {get;set;}
    
    Public Void Main()
    {
    //Step 1 single email msg
    Messaging.SingleEmailMessage Se = new Messaging.SingleEmailMessage();
    
    //Step 2 : perpare the things
    
    List<String> Sndto = new List<String>{Sndto};
    
    Se.setToAddresses(Sndto);
    Se.setSubject(Sub);
    Se.setPlainTextBody(Msg);
        
    //Sending email
        List<Messaging.Email> sent = new List<Messaging.Email>{Se};
       Messaging.sendEmail(sent);
        

}
}