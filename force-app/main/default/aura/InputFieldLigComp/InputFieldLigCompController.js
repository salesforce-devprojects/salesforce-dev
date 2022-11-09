({
	calculate : function(component, event, helper) 
    {
        var a = parseInt(component.get("v.num1"));  //component to controller get method
        var b = parseInt(component.get("v.num2")); //component to controller get method
        var c = parseInt(component.get("v.num3"));  //component to controller get method
        
        if(a>b && a>c)
        {
            component.set("v.Result",a);   //controller to componenet set method
        }
        
          else if(b>a &&  b>c)
        {
            component.set("v.Result",b);   //controller to componenet set method
        }
        else
        {
            component.set("v.Result",c);    //controller to componenet set method
        }
		
	},
    
    clear : function(component, event, helper)
    {
     component.set("v.Result","0");
     component.set("v.num1",null);
     component.set("v.num2",null);
     component.set("v.num3",null);
        
    }
})