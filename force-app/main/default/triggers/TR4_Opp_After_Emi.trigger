trigger TR4_Opp_After_Emi on Opportunity (after insert,after update) 
{
    List<Opportunity> oo = Trigger.new;
    
    if(trigger.isinsert)
    {
    for(Opportunity eao :oo)
    {
       if(eao.Amount == 200)
       {
           Mailingpra.Main();
       }
     
    }
    }
    
   
        
    }