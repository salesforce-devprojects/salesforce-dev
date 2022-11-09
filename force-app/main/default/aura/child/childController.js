({
	click : function(component, event, helper) 
    {
        // here we have to fire the event when click capture the register event name
        let e = component.get("v.simpleevent");
        //set values
        
        e.setParams({"message":component.get("v.childtoparent")});
        e.fire();
		
	}
})