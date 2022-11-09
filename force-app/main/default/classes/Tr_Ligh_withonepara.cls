Public class Tr_Ligh_withonepara 
{
    @AuraEnabled
    Public Static String Main(Account acc)
    {
        String res;
        try
        {
            Insert acc;
            res = 'The account is inserted sucessuflly'+acc.Id;
        }
        catch(Exception e)
        {
            res = 'The account inserted is failed '+e.getMessage();
            
        }
        return res;
    }

}