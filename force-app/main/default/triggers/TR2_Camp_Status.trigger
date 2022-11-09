trigger TR2_Camp_Status on Campaign (before insert,before update) 
{
    List<Campaign> cc = Trigger.new;
    
    for(Campaign eac:cc)
    {
         if(eac.Status == 'Planned')
         {
             eac.BudgetedCost = 50000;
             
         }
        if(trigger.isupdate)
        {
            
        
        if(eac.Status =='in Progress')
        {
            eac.BudgetedCost = 100000;
        }
        if(eac.Status == 'Completed')
        {
            eac.NumberSent = 35;
            eac.IsActive = true;
        }
        
    }
        
    }

}