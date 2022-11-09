trigger ContactTrigger on Contact (before insert,before update) 
{
    //whenever ur doing before insert operation use trigger.new
   
    //trigger.new list of new trigger
    
    //select the sobject 
 /*   
    if(Trigger.isInsert)
    {
        
    
    for(Contact ca :Trigger.new)
    {
       if(ca.Languages__c!=Null&&ca.Languages__c == 'Telugu')
       {
           ca.Description = 'This is telugu language';
       }

    }
    
    
    }
*/
    if(Trigger.isUpdate)
    {
        for(Contact aa :Trigger.new)
        {
            if(aa.Name == 'SaiKiran' && aa.Phone == '999999')
            {
                aa.LeadSource = 'Web';
            }
        }
    }
}