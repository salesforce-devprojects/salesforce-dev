public class AccountTrigger1
{
    
    Public Static Void BeforeInsert(List<Account> aa)
    {
        for(Account acc :aa)
        {
            
            if(acc.BillingAddress!=Null)
        {
          
            acc.BillingCity = acc.ShippingCity;
            acc.BillingCountry = acc.ShippingCountry;
            acc.BillingPostalCode = acc.ShippingPostalCode;
            acc.BillingStreet     = acc.ShippingStreet;
            acc.BillingState    = acc.ShippingState;       
        }
            
        }
    }

}