public class Eg1GSP_12_getset {
    public integer N1  {get;set;}
    public integer N2  {get;set;}
    public integer N3  {get;set;}
    public integer res {get;set;}
    public String  ch  {get;set;}
    
    Public Void Method()
    {
        if(ch == 'Gr')
        {
            GreaterNum();
            
        }
        Else if(ch == 'Sm')
        {
            SmallerNum();
        }
        Else
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