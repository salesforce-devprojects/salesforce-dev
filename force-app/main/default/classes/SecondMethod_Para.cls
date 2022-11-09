public class SecondMethod_Para
{
    
   
   @AuraEnabled 
    Public Static String Main(Account acc,Contact cc,Lead ll,Opportunity opp)
    {
        String res;
       Insert acc; //atomic if one fails everything fails
       Database.Insert(cc,false); //non atomic if one pass it will exceute
       Database.Insert(ll,false);
       Database.Insert (opp,false);
        res = 'Account inserted succefuflly '+acc.id;
        return res;
        
    }

}