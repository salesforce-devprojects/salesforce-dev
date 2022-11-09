({
	save : function(component, event, helper)
    {
        //get the component data
        
        var a = component.get("v.accname");
        var b = component.get("v.accphone");
        var c = component.get("v.accrating");
        var d = parseInt(component.get("v.accannu"));
        //call the apex class
        
        var action = component.get("c.acc");
        
        //pass the parametres
        
        action.setParams({"Nm":a,"Ph":b,"Ra":c,"Al":d});
        
        //rollback
        action.setCallback(this,function(response){
                                           var state = response.getState();
                                          if(state =='SUCCESS')
                                            {
                                                var Result = response.getReturnValue();
                                                alert(Result);
             
                                             }
                                         
                                         });
                                         
        
        //enqueue
        $A.enqueueAction(action);
        
		
	},
    clear: function(component, event, helper)
    {
         component.set("v.accname",null);
         component.set("v.accphone",null);
         component.set("v.accrating",null);
         parseInt(component.set("v.accannu"),null);
    }
})