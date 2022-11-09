public class Eg2AccountCreation {
    public  String Na  {set;get;}
    public  String Ph  {set;get;}
    public  String Ra  {set;get;}
    public  String Ind {set;get;}
    public string res  {set;get;}
    public string clr  {set;get;}
    
    
    
    
    public void Acccr()
    {
        Try{
        Account acc = New Account();
        acc.Name = Na;
        acc.Phone = Ph;
        acc.Rating = Ra;
        acc.Industry = Ind;
        INSERT acc;
         res = 'Account inserted succesfully'+acc.Id;
         clr = 'green';
        }
        catch(Exception e)
        {
            res = 'Account inserted Failed'+e.getMessage();
            clr = 'Red';
        }
        
    }
}