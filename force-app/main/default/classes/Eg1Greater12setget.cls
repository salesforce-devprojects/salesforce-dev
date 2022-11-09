public class Eg1Greater12setget {
    Public Integer N1     {set;get;}
    Public Integer N2     {set;get;}
    Public Integer N3     {set;get;}
    Public String Ch      {set;get;}
    Public Integer res    {set;get;}
    Public String Msg     {set;get;}
    Public String font    {set;get;}
    Public String clr     {set;get;}
   

Public void Cal()
{
    if(Ch=='Gr')
    {
        GreaterNum();
        Msg ='The greater Number is '+res;
        clr ='green';
        font = '100px';
    }
    else if (ch == 'Sm')
    {
        SmallerNum();
        Msg ='The Smaller Number is '+res;
        clr ='red';
        font = '90px';
    }
    else
    {
        res = 0;
    }
}    
    
   Void GreaterNum()
   {
     if(N1>N2&&N1>N3)
     {
         res = N1;
     }
       else if(N2>N1&&N2>N3)
       {
           res = N2;
       }
       else
       {
           res = N3;
       }
       
   }
    
    Void SmallerNum()
    {
        if(N1<N2&&N1<N3)
     {
         res = N1;
     }
       else if(N2<N1&&N2<N3)
       {
           res = N2;
       }
       else
       {
           res = N3;
       }
    }
    
    
    
    

}