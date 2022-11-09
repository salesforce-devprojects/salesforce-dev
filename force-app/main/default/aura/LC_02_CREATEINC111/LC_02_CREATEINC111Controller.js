({
	subme : function(component, event, helper)
    {
        var a = component.get("v.cacc");
        
        //get the event
        
        var evt = component.getEvent("sona");
        //set the parametres
        
        evt.setParams({"eacc":a});
        
        //fire the event
        evt.fire();
		
	}
})