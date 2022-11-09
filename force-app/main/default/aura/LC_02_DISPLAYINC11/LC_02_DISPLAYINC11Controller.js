({
    createcol : function(component, event, helper) 
    {
        var c = [
            
            {label:'Account Name',fieldName:'Name'},
            {label:'Account Phone',fieldName:'Phone'},
            {label:'Account Industry',fieldName:'Industry'},
            
        ];
            component.set("v.col",c);
            
      },
            showme :function(component,event,helper)
            
            {
            var ea = event.getParam("eacc");
            
            var a = component.get("v.accounts");
            
            a.push(ea);
            
            component.set("v.accounts",a);
            
            
            
            
            
            }
            
            
            })