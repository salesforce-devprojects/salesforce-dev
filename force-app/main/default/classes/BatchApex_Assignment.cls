public class BatchApex_Assignment implements Database.Batchable<sobject>
{
    
    Public List<Contact> start(Database.BatchableContext bc)
    {
        List<Contact> cc = new List<Contact>();
        cc = [select id,Name,MailingCity from Contact];
        return cc;
        
    }
    Public Void Execute(Database.BatchableContext bc,List<Contact> ss)
    {
        List<Contact> ebin = new List<Contact>();
        for(Contact eac:ss)
        {
            if(eac.Mailingcity!= Null)
            {
                eac.Mailingcity = 'Hyderabad';
                ebin.add(eac);
                
            }
            
            
        }
        update ebin;
        
    }
    Public Void Finish(Database.BatchableContext bc)
    {
        Task  tt = new Task();
        tt.Subject = 'New Task generted through Batch Apex';
        Database.insert(tt,false);
        
    }
   

}