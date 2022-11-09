public class OppCreation_Ligh 
{
    @AuraEnabled
    Public Static String Oppcre(String Nm,Date d,String st)
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
            res = 'Opp creation failed '+e.getMessage();
        }
        
        return res;
        
    }

}