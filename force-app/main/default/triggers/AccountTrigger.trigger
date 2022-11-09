trigger AccountTrigger on Account (before update) 
{
 
    for(Account acc : Trigger.new)
    {
        if(acc.Name!=Null &&(acc.Name == 'test trigger 2'||acc.AnnualRevenue ==99))
        {
            acc.Type = 'Prospect';
        }
    }
    

}