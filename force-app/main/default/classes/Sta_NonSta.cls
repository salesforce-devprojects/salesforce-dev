public class Sta_NonSta 
{
    Public        integer j = 10;
    Public Static integer i = 10;
    
    
    Public Static Void Sta()            //static method can access static variables only
    {
        i  = i+10;                     //static uses continuous memory block no instance req for 
                                       //faster access
        system.debug(i);
        
        
    }
    
    
    Public Void NonSta()              //Non static method can access static and non static variables
    {
        j = j+10;                     //This non static method can create diff types of instances and                              
        system.debug(j);               //with diff blocks
    }

}