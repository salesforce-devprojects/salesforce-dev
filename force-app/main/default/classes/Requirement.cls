public class Requirement 
{
    Public String st;
    
    
    Public Map<String,List<Lead>> Main(String st)
    {
      
       // String s = 'St\'josef'
       // St             saiprasad sai  Like '%s'
          
        
        //Find 'st2' IN All fields Returning Lead(Name,Company,Status,LeadSource)
        //'FIND\'Edge*\'IN ALL FIELDS RETURNING Account(id,name),Contact, Lead'
      string st2 = 'FIND \''+st+'*\'IN ALL FIELDS RETURNING Lead(Name,Company,Status, LeadSource)';
       
        List<List<Lead>> st3 = Search.query(st2); //search query for string
          List<Lead>ll =(List<Lead>)st3.get(0);  //get method with typecaste index 0
               
        Map<String,List<Lead>> mm = new Map<String,List<Lead>>();
        for(Lead l:ll)
        {
            List<Lead>l2 = new List<Lead>();
            l2.add(l);
            String k  = l.Company + l.LeadSource;
            mm.put(k, l2);
            system.debug('The map values are '+mm);
        }
        
        return mm;
     
      
        
        
    }

}