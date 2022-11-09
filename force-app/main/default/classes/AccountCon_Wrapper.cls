public class AccountCon_Wrapper 
{

    List<Acc_con_wrapper> acclist;
    List<Acc_con_wrapper> conlist;




Public Void Compare()
{
    AccountCompare();
    ContactCompare();
    
    
    for(Acc_con_wrapper eacc:acclist)
    {
        for(Acc_con_wrapper ecc:conlist)
        {
            if(eacc.accname == ecc.cclastname)
            {
               
            }
        }
    }
}

List<Acc_con_wrapper> AccountCompare()
{
    acclist = new List<Acc_con_wrapper>();
    
    Acc_con_wrapper acc = new Acc_con_wrapper();
    acc.accname = 'Sree';
    acc.aindus = 'Electronics'; 
    acclist.add(acc);
    
    
    return acclist;
    
}

List<Acc_con_wrapper> ContactCompare()
{
    
     conlist = new List<Acc_con_wrapper>();
    
       Acc_con_wrapper cc = new Acc_con_wrapper();
     cc.cclastname = 'Sree';
    cc.ccemail = 'Electronics'; 
    conlist.add(cc);
    
    
    return conlist;

}
    
    public class Acc_con_wrapper 
{
    Public String accname   {get;set;}
   Public String cclastname   {get;set;}
   Public String ccemail   {get;set;}
   Public String aindus    {get;set;}
 
    
  
 

}

}