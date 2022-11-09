Public class MapPratisce 
{
    
    Public Void MapFunctions()
    {
        Clear();
        Cl();
        Put();
        Get();
        Contkey();
        Keyset();
        Val();
        Putal();
        PutalSobjarray();
        LstAcc();
        
    }
    
    Void Clear()
    {
        Map<Integer,String> mp = new Map<Integer,String>{1=>'Sai',2=>'Sreeram',3=>'Tendulkar'};
        system.debug('The map elements are '+mp);
        mp.clear();
        system.debug('The map elements after clear '+mp);
        
    }
    
    Void Cl()
    {
        Map<Integer,Integer> mp = new Map<Integer,Integer>{1=>2,2=>3,3=>4,4=>5};
            system.debug('The first map elements are '+mp);
        Map<Integer,Integer> mp1 = new Map<Integer,Integer>();
        mp1 = mp.clone();
        system.debug('The map with clone elements are '+mp1);
    }
    Void Put()
    {
        Map<Integer,Integer> mp1 = new Map<Integer,Integer>();
        system.debug('The map before put function '+mp1);
        mp1.put(1,4);
        mp1.put(2, 5);
        mp1.put(3,6);
        mp1.put(4,7);
        system.debug('The map after put is '+mp1);
    }
    
    Void Get()
    {
        Map<Integer,Integer> mp1 = new Map<Integer,Integer>();
        system.debug('The map before put function '+mp1);
        mp1.put(1,4);
        mp1.put(2, 5);
        mp1.put(3,6);
        
        mp1.get(2);
        system.debug('The value at key 2 is '+mp1);        
    }
    
    Void Contkey()
    {
        Map<Integer,Integer> mp1 = new Map<Integer,Integer>();
        system.debug('The map before put function '+mp1);
        mp1.put(1,4);
        mp1.put(2, 5);
        mp1.put(3,6);
        Boolean b = mp1.containsKey(4);
        system.debug('The contains key is '+b);
        
    }
    Void Keyset()
    {
        Map<Integer,Integer> mp1 = new Map<Integer,Integer>();
        system.debug('The map before put function '+mp1);
        mp1.put(1,4);
        mp1.put(2, 5);
        mp1.put(3,6);
        Set<Integer> s = new Set<Integer>();
        s = mp1.keySet();
        system.debug('The key sets are '+s);
        
    }
    
    Void Val()
    {
        Map<Integer,Integer> mp1 = new Map<Integer,Integer>();
        system.debug('The map before put function '+mp1);
        mp1.put(1,4);
        mp1.put(2, 5);
        mp1.put(3,6);
        List<Integer> ll = new List<Integer>();
        ll = mp1.values();
        system.debug('The values are in the map are stored in list are '+ll);
        
    }
    Void Putal()
    {
        Map<Integer,Integer> mp1 = new Map<Integer,Integer>();
        system.debug('The map before put function '+mp1);
        mp1.put(1,4);
        mp1.put(2, 5);
        mp1.put(3,6);
        Map<Integer,Integer> mp2 = new Map<Integer,Integer>();
        mp2.putAll(mp1);
        system.debug('The elements in the second map are after putall function is '+mp2);
        
    }
    Void PutalSobjarray()
    {
        List<Account> aa = new List<Account>();
        aa = [Select id,Name from Account];
        Map<id,Account> mm  = new Map<id,Account>();
        mm.putAll(aa);
        system.debug('The map with account id and account name is '+mm);
        
    }
    
    Void LstAcc()
    {
        //Creating a map with account name as key and account phone as value
        
        List<Account> aa = new List<Account>();
        aa = [Select id,Name,Phone from Account where Phone <> null];
        //map with account name as key and acc phone as value
        Map<String,String> mm = new Map<String,String>();
        for(Account acc : aa)
        {
            mm.put(acc.name,acc.Phone);
        }
        system.debug('The map with account name as key and account phone as value '+mm);
    }
    
    
}