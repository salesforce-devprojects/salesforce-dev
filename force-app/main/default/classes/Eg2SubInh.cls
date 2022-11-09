public class Eg2SubInh extends Eg2MulInherit  {
    
    Public Void S(integer i,integer j)
        
    {
       integer c;
        
        c = i - j;
        system.debug('The result of su '+c);
       
    }
    
    Public Void Display(Integer a,Integer b)
    {
        Add(a,b);
        Mul(a,b);
        S(a,b);
        
    }



}