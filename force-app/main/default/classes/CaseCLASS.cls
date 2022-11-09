public class CaseCLASS {

    
 @InvocableMethod(label ='CaseCLASS'category='Account')
    
    public static void createcase()
    {
        
        Case c1 = new Case();
        c1.Status = 'High Priority';
        c1.Priority = 'Low Priority';
        insert c1;
      
       
        
    }
       

}