trigger TR3_Lead on Lead (before insert,before update) 
{
    List<Lead> ll = trigger.new;
    
   if(trigger.isinsert)
   {
       for(Lead eal:ll)
       {
           if(eal.rating=='Hot'&& eal.company =='amazon')
           {
               eal.Title = 'Software Engineer';
           }
          
       }
       
   }
    
    if(Trigger.isupdate)
    {
        for(Lead eal:ll)
        {
            if(eal.Rating =='Warm' && eal.Company =='flipkart')
            {
                eal.Title = 'Manger';
            }
            
            if(eal.Company =='Dell')
            {
                eal.Phone = '123';
                eal.MobilePhone = '456';
                eal.Email = 'd@d.com';
                eal.Rating = 'cold';
                eal.NumberOfEmployees = 56000;
                eal.Description = 'This is Dell company automatically updating all the fields';
                eal.ProductInterest__c  = 'GC1000 series';
                
            }
            
        }
        
    }

}