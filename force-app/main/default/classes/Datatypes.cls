public class Datatypes {
    
    public integer i=10;
    Public Decimal  j = 2.5;
    Public String s = 'Sreeram';
    Public Boolean ist = true;
    Public Date d1 =Date.newInstance(2021, 12,27);
    Public Double dd = 2.55443;
    Public Long ll = 2737367276377626L;
    Public ID  id  = '0015g00000b3Zs2AAE';
    Public Object ob1 = 10;
    Public Object ob2 = 'sachin';
    Public Object ob3 = 3.234;
    
    
    
    Public Void Main()
    {
        I();       //Integer Datatype
        De();      //Decimal
        S();       //String
        B();       //Boolean
        D();       //Date
        DD();      //Double
        L();       //Long
        II();      //ID
        OO();      //Object
        
    }

    
    
    void I()
    {
      
        system.debug('The integer datatype is'+i);

    }
    
    void De()
    {
        system.debug('The decimal datatype is'+j);
    }
    void S()
    {
        system.debug('The string datatype is'+s);
        
   }
     void B()
    {
        system.debug('The boolean datatype is'+ist);
    }
    
     void D()
    {
        system.debug('The date datatype is '+d1);
    }
    
    void DD()
    {
        system.debug('The double datatype is'+dd);
     }
    void L()
    {
        system.debug('The Long datatype is'+ll);
     }
    void II()
    {
        system.debug('The valid id datatype is'+id);
    }
    
    void OO()
    {
       Integer i = (Integer)ob1;
        String s = (String)ob2;
        Decimal d = (Decimal)ob3;
     }

 }