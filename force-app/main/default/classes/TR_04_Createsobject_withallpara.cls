Public class TR_04_Createsobject_withallpara
{
    @AuraEnabled
    Public Static String acc(String Nm,String Ph,String Ra,Integer Al)
    {
        String result;
        try
        {
            Account aa = new Account();
            aa.Name = Nm;
            aa.Phone = Ph;
            aa.Rating = Ra;
            aa.AnnualRevenue = Al;
            insert aa;
            result = 'Account created succesfully with account id '+aa.Id;
        }
        catch(Exception e)
        {
            result = 'Account created failed '+e.getMessage();
        }
        return result;
        
        
    }

}