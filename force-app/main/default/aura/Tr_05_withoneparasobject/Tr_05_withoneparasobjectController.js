({
	save : function(component, event, helper)
    {
        //get the data from component
        var aa = component.get("v.acc");
        //call the apex method
        
        var action = component.get("c.Main");
        //set parametres
        
        action.setParams({"acc":aa});
        
        //roll back
        
        action.setCallback(this,function(response){
                                var state = response.getState();
                                   if(state =='SUCCESS')
                                   {
                                       var result = response.getReturnValue();
                                       alert(result);
                                   }
            
        });
      
        
        //enqueue 
        $A.enqueueAction(action);
        
		
	},
    clear : function(component, event, helper)
    {
        component.set("v.acc",null);
    }
    
})