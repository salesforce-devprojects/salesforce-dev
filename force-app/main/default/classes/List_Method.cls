public class List_Method 
{
    
   
     Public Void Main(List<String> ss)
    {
        ss = new List<String>();
        
map<string,list<string>> mp = new map<string,list<string>>();
list<string> values = new list<string>();  //for stroing duplicates
for (string i :ss)
{
    string key=i.left(1);  //string function to trim the string and took only one value from string
    boolean b=mp.containsKey(key);
    if (b==false)   //first iteration no key so if block will exceute
    {
        mp.put(key,new List<string>{i});
        }
    else    //for duplicates for not going to override will take else part
    {
     values=mp.get(key);
     values.add(i);
     mp.put(key,values);
    }
}
system.debug(mp);

        
    }
    
    
    
    
}