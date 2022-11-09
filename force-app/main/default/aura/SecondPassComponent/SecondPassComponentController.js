({
	Clc : function(component, event, helper) 
    {
        
        var aa = component.get("v.acc");
        var bb = component.get("v.cc");
        var cc = component.get("v.ll");
        var dd = component.get("v.opp");
      
        
        //call apex
        var action = component.get("c.Main");
        
        //pass parametres
        action.setParams({"acc" : aa,"cc":bb,"ll":cc,"opp":dd});
        
        //roll back
      
        
        //enqueue function
        
        $A.enqueueAction(action);
        
		
	}
})