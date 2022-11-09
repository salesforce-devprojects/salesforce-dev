({
    click : function(component, event, helper) 
    {
        var a = parseInt(component.find("inp1").get("v.value"));
        var b = parseInt(component.find("inp2").get("v.value"));
        var c = parseInt(component.find("inp3").get("v.value"));
        
        if(a>b&&a>c)
        {
            component.find("res").set("v.value",a);
            
        }
        else if(b>a&&b>c)
        {
            component.find("res").set("v.value",b);
            
        }
            else
            {
                component.find("res").set("v.value",c);
            }
    },
    clear : function(component, event, helper) 
    {
        component.find("inp1").set("v.value",null);
        component.find("inp2").set("v.value",null);
        component.find("inp3").set("v.value",null);
        component.find("res").set("v.value",null);
        
        
    }
    
})