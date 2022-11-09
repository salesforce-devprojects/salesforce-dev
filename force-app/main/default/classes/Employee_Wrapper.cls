public class Employee_Wrapper 
{
    String Name;
    Integer Age;
    String sex;
    Department obj;
    
    
    Public Employee_Wrapper(String Nm,Integer Age,String Sex,String DepName,Integer Sal)
    {
        this.Name = Nm;
        this.Age = Age;
        this.Sex = Sex;
        obj = new Department(DepName,Sal);
        
    }
    
    
    
    public class Department
    {
        String DepName;
        Integer Sal;
        
        Public Department(String DepName,Integer Sal)
        {
           this.DepName = DepName;
           this.Sal = Sal;

        }

    }
    
    

}