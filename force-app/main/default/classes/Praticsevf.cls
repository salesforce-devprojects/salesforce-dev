public class Praticsevf 
{
    
    Public List<Account> aa {get;set;}
    Public String st        {get;set;}
    
    
    Public Void Main()
    {
        String st = 'Select id,Name,Phone from Account  where name like \'%'+st+'%\' LIMIT 100';
        aa = Database.query(st);
        
    }

}