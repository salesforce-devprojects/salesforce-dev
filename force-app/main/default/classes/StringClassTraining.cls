public class StringClassTraining 
{
    Public Void Main()
    {
        abb();                  //abberivate function based on width
        abbOff();              //abbreviate function with width and offset
        Cap();                 //It will captialize the string with first Letter Caps
        Cen();                 //It will move the string to center with left and right spaces
        CenPadd();             // it will move the string to center with spaces with specified string
        Compare();             //it will compare 2 strings with index postion and returns a number
        Contains();            //it will check wheather both strings are same or not
        ContainsAnyInputString(); //compare both string have same char or not with i/p string
        
        
        
    }
    
    Void abb()    
    {
        String s = 'Hello World I am Robo';
        String s1 = s.abbreviate(8);
        system.debug('The string s1 is'+s1);

    }
    
    Void abbOff()
    {
       String s = 'Hello World I am Robo';
       String s1 = s.abbreviate(9, 5);
       system.debug('The string s1 is'+s1); 
    }
   
   Void Cap()
   {
       String s = 'hello World I am Robo';
       String s1 = s.capitalize();
       system.debug('The string s1 is'+s1);
   }
    
    
    Void Cen()
    {
        String s = 'hello'; 
        system.debug(s.center(990));
    }
    
    Void CenPadd()
    {
         String s = 'hello'; 
        system.debug(s.center(200, '*'));
    }
    Void Compare()
    {
        String s = 'Hello';
        String s1 = 'Hai';   
        Integer res;
        res = s.compareTo(s1);
        System.debug('The comparsion result is'+res);
    }
    Void Contains()
    {
          String s = 'Hello';
          String s1 = 'Hai';  
          Boolean iscont;
          iscont = s.contains(s1);
        system.debug(iscont);
        
    }
     Void ContainsAnyInputString()
     {
         String s = 'Hello';
          String s1 = 'Hai';  
          Boolean iscont;
          iscont = s.containsAny('H');
          system.debug(iscont);
        
         
     }
    

}