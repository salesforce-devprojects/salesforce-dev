public class Eg4_Poly_OverLoadingEx {
    
    Public Void Main()
    {
       system.debug('Good Mrng');
    }
   
    
    Public Void Main(Integer x,Integer y)
    {
       Integer c;
        c=x+y;
        system.debug('The result of add is'+c);
    }
   
    Public Void Main(Integer x, Integer y, Integer a)
    {
       Integer z;
        z  = (x+y)/a;
        system.debug('The result of entire thing is'+z);
       
    }
    
    Public Void Main(String b)
    {
       System.debug('Hello Mr'+b);
    }
   
 
   
    
    
}