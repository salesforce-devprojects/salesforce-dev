Public class CustomApex 
{
    //syntax: Public <sobject> <variable>
    Public Account ll         {get;set;}
    
    Public CustomApex()
    {
        ll = new Account();     //intiallization
    }
    
     Public PageReference save()
     {
        insert ll;
         return Null;
    }
    
}