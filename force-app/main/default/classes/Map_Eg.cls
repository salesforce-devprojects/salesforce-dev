public class Map_Eg
{
    
    
    Public Void Main()
    {
        
     
         
        
        Map<String,String> mp    = new Map<String,String>();
        //1st method
         mp.put('A', 'Apple');
         mp.put('B','Ball');
         mp.put('C', 'Cat');
        System.debug('THe map elements are '+mp);
        
        //2nd method
        
        Map<String,String> mp1    = new Map<String,String>{'A'=>'Apex','B'=>'Ball'};     
        system.debug('The map elements are'+mp1);
       Map<String,String> mp2    = new Map<String,String>();
        mp2 = mp1.clone();
        system.debug('The new Map after cloning is '+mp2);
        
       Boolean b =   mp2.containsKey('A');
        if(b)
        {
           system.debug('The map contains key is '+b); 
        }
        else
        {
            system.debug('The map contains key is '+mp2); 
        }
        
      mp2.remove('A');
        system.debug('The new map is '+mp2);
        
        Map<String,String> mp3 = new Map<String,String>{'A'=>'Spyder','B'=>'Packmen'};
        System.debug('The key sets are' +mp3.keySet());

     
    }

}