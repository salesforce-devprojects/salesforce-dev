({
	Clc : function(component, event, helper)
    {
        var a = component.get("v.Accnm");
        var b = component.get("v.Phon");
        var c = component.get("v.In");
        var d = parseInt(component.get("v.ALL"));
        
        
        //call apex method
       
        var action = component.get("c.Main");
        
        //set params
        action.setParams({"St":a,"Ph":b,"Ind":c,"Al":d});
        //call back
        
        
        //enqueue method
        $A.enqueueAction(action);
		
	}
})