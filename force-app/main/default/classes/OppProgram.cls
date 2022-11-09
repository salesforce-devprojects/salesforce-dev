public class OppProgram {
    
    String reason = 'Correct';
    String userId = UserInfo.getUserId();
    
    Public void MainMethod()

    {
        if(reason =='Correct')
        {
            OppMethod();
        }
        else
        {
            system.debug('No task');
           }
        
    }
    public void OppMethod(){
        
            for(Opportunity oo:[Select id,Amount from Opportunity])
            {
                if(oo.Amount<100)
                {
                    delete oo;
                }
                Else if(oo.Amount>100 && oo.Amount<=500)
                {
         
                    
                        Task tt = new task();
                        tt.OwnerId = userId;
                        tt.Subject = 'OPP for task less than 500';
                        tt.Status = 'Open';
                        insert tt;
                }
                    else
                    {
                        system.debug('No');
                     }
                    
                }
            
            
            
            
        }
    }