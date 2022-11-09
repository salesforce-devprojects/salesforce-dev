Public class ExtensionPr
{
    Public Integer Num1 {get;set;}
    Public Integer Num2 {get;set;}
    Public Integer Num3 {get;set;}
    Public String  Ch   {get;set;}
    Public Integer Result {get;set;}
    
    
    
    Public  ExtensionPr(ApexPages.StandardController ab)
    {
        
    }
    
    
    Public Void Mainmethod()
    {
        if(Ch =='GR')
        {
            Greter();
        }
        else if(Ch =='SM')
        {
            Smaller();
            
        }
        else
        {
            Result = 0;
        }
        
    }
    Void Greter()
    {
        if(Num1>Num2&&Num1>Num3)
        {
            Result = Num1;
        }
        else if(Num2>Num1&&Num2>Num3)
        {
            Result = Num2;
        }
        else
        {
            Result = Num3;
        }
        
    }
    
    Void Smaller()
    {
         if(Num1<Num2&&Num1<Num3)
        {
            Result = Num1;
        }
        else if(Num2<Num1&&Num2<Num3)
        {
            Result = Num2;
        }
        else
        {
            Result = Num3;
        }
        
    }

}