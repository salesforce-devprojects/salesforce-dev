public class Wrapper_Compare 
{
    List<Acc_con_wrapper> Alis;
    List<Acc_con_wrapper> Clis;
    
    
    
    
  Public Void Compare()
  {
      
          
      
       AccountList();
       CList();
      
          
     try
     {
         
     
   List<Case> clist = new List<Case>();   
      for(Acc_con_wrapper eal:Alis)
      {
          for(Acc_con_wrapper ecl:Clis)
          {
              if(eal.Name==ecl.conname)
              {
                 Case cc = new Case();
                  cc.Subject = 'This is a subject from account and con names '+eal.Name+ecl.conname;
                  cc.Status = 'Open';
                  clist.add(cc);                  
              }
              else
              {
                system.debug('nothing');
              }

          }
      }
      insert clist;
       
  
  }
        catch(Exception e)
    {
        system.debug('The error is'+e.getMessage());
    }
      
  }
    
  
    
    
     List<Acc_con_wrapper> AccountList()
    {
        Alis = new List<Acc_con_wrapper>();
        
        Acc_con_wrapper a1 = new Acc_con_wrapper();
        a1.Name = 'Sreeram';
        a1.accph = '98772';
       
        
       Acc_con_wrapper a2 = new Acc_con_wrapper();
        a2.Name = 'Sachin';
        a2.accph = '87';
        
        Alis.add(a1);
        Alis.add(a2);
        
        return Alis;
        
        

    }
    
    
    
    
      List<Acc_con_wrapper> CList()
    {
        Clis = new List<Acc_con_wrapper>();
        
        Acc_con_wrapper c1 = new Acc_con_wrapper();
        c1.conname = 'Sreeram';
        c1.conph = '98772';
       
        
       Acc_con_wrapper c2 = new Acc_con_wrapper();
        c2.conname = 'Suresh';
        c2.conph = '87';
        
        Clis.add(c1);
        Clis.add(c2);
        
        return Clis;
        
        

    }


}