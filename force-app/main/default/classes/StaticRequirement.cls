public class StaticRequirement 
{
    
    
    Public Map<String,List<Lead>> Main(String St)
    {
       List<Lead> ll;
        
     
        ll =[Find 'st' IN All fields Returning Lead(Name,Company,Status,LeadSource)][0];
        Map<String,List<Lead>> mm = new Map<String,List<Lead>>();
        
        for(Lead a :ll)
        {
           List<Lead> l2 = new List<Lead>();
           String key = a.Company+a.LeadSource;
           l2.add(a);
           mm.put(key,l2);
            system.debug('The map values are '+mm);
            
           
        }
        return mm;
    }

}