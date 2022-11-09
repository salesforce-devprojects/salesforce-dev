public class Map_Training 
{
    
    //The requirment is we need to show the details of account with account filed industry
    //inside map with list
    //where map key is account field industry and value is list of accounts
    //
    //here we need to display the list of accounts based on industry (this is ex) used with map inside
    //list
    
    Public Void Main()
    {
        //Step1 : First we need to query the list of account with industry 
        List<Account> aa = [Select id,Name,Industry from Account where Industry<>null];
        //Step2 : We need to initialize the map with list as we are displaying industry as key with list of acc
        Map<String,List<String>> mp = new Map<String,List<String>>();
        //descr: here industry is string and list of accounts we are reterviewing is also string
        //because of fields name,industry those are strings so thats why we are taking in Map as string,List<String
        
        
        //Step3: we need to take for loop for traversing as checking for list of accounts based on industry
        
        for(Account acc:aa)  //Traversing list of accounts with variable acc with list aa
        {
            if(mp.containsKey(acc.Industry)) //here we are checking the map wheather key is there or not
            {                                //contains key is nothing but it will check wheather key is there or not
                
                //if key is there will create a new list
                List<String> tmplist = new List<String>();
                tmplist.addall(mp.get(acc.Industry));
                tmplist.add(acc.name);
                //map<string,List<String>>
                mp.put(acc.Industry, tmplist);   //here in this loop we are creating same for duplicates
            }
            else
            {
                List<String> tmplist = new List<String>();
                tmplist.add(acc.name);
                mp.put(acc.Industry, tmplist);
            }
            
        }
        
        
        
    }
    
}