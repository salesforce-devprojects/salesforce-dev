({
	handler : function(component, event, helper)
    {
        let c = event.getParam("message");
        
        component.set("v.catch",c);
		
	}
})