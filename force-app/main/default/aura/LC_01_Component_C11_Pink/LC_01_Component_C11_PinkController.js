({
	clickme : function(component, event, helper) 
    {
        //get the event 
        var evt = component.getEvent("new");
    
        evt.setParam({"message":"This is component event"});
   
        //fire the event
        evt.fire();
		
	},
    handle :function(component, event, helper) 
    {
        var a = event.getParam("message");
     
        alert("This is C11 PINK");
       
    }
})