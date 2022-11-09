public class EgStatic 
{
    
   Public integer  i = 10;     //Non static class variable
    
   Public Static integer j = 10;   //Static class variable

    
    Public Void Main1()            //Non-static
    {
        
       
        i= i+20;
        system.debug('The non static Method'+i);
        
    }
    
    Public Static Void Main2()         //Static
    {
       
         j= j+20;
        system.debug('The Static method is'+j);
        
    }
    
    
    
    
    
}