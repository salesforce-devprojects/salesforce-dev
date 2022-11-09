public class HH {
 
    /*
    public String  Tarun(Integer i,Integer j)     //Non void return type is must based on datatype
    {
        integer sum;  //local sum will 2 add nos
        sum = i+j;    //local variable to perform addtion
        system.debug('The Addition of 2 numbers is'+sum); //result stored in sum
        return 'Sreeram';  // non void method return must be string as per datatype
        
    }
     */
       
  public  Integer  i = 20;
    
    public void N()
    {
        //<Sobject_Name> <Variable_Name> = new <S_object>();
           Account          tarun        = new    Account();
           //Accessing <Variable_Name> . <Api_Name of that particular object> = <Value>;
           //DML OPERATION(INSERT,UPDATE,DELETE,UPSERT)
           // <Operation> <Variable_Name>;
                             tarun      .Name                                 =   'Hello';
                             tarun      .AnnualRevenue                        =  33;
                             tarun      .Industry                             = 'Agriculture';
                             INSERT tarun;
        
        for(Account acc :[Select id,Rating from Account where Rating = 'Hot'])
        {
            Delete acc;
        }
    }

}