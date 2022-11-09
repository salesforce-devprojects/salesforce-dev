({
	clickme : function(component, event, helper) 
    {
        //step 1 get the values from componenet and store it in varaible
        
       

        var a = component.get("v.accname");
        var b = component.get("v.accph");
        var c = component.get("v.accal");
        var d = component.get("v.accra");
        
        //step 2 call the apex method declare it in one variable
        
        var aa = component.get("c.acc");
        
   //step 3 pass the parametress(optional)     
        
        aa.setParams({"Nm":a,"Ph":b,"Ra":d,"Al":c});
        
        //step 4 this is optional based on requirment u will use this
        
        aa.setCallback(this,function(shivang){
             var state = shivang.getState();
            if(state == 'SUCCESS')
            {
                var result = shivang.getReturnValue();
                alert(result);
            }
            
        });
       
        
        //step 5 enqueue action (mandatory)
        
        $A.enqueueAction(aa);
        
        
        
		
	},
    clear: function(component, event, helper) 
    {
        component.set("v.accname",null);
        component.set("v.accph",null);
        component.set("v.accal",null);
        component.set("v.accra",null);
        
        
    }
})