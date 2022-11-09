public class Fetch_Order_Details 
{
    @InvocableMethod(label='Verify OrderDetails') 
    Public static List<OrderInput> fetchingOrderDetails(List<OrderInput> Order_Number)
    {
     
        List<OrderInput> orderInputList = new List<OrderInput>();
        
        return orderInputList;
        
    }
    
    
Public Class OrderInput
{
   
   @InvocableVariable(required=true) 
   Public Integer OrderNumber;
   
    
}
    
    
 Public Class OrderOutput
 {
     @InvocableVariable(required=true) 
     Public String OrderStatus;
     @InvocableVariable(required=true) 
     Public String OrderName;
     
 }

}