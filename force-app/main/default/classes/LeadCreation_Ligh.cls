public class LeadCreation_Ligh
{
    
    
    Public Static String LeadCre(String Nm,Date d,String st)
    {
        String res;
        try
        { 
            Opportunity oo = new Opportunity();
            oo.Name = Nm;
            oo.CloseDate = d;
            oo.StageName = st;
            res = 'Opp is created with id '+oo.Id; 
        }
        Catch(Exception e)
        {
            res = 'Lead creation failed '+e.getMessage();
        }
        
        return res;
        
    }

}