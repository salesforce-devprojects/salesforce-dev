({
	clickme: function(component, event, helper) 
    {
      var a =   component.get("v.Oname");
      const b = component.get("v.Ocld");
      var c =   component.get("v.Ost");
        
        //Call apex code
       var action = componenet.get("c.Oppcre");
        //Set parametres
        action.setParams({"Nm":a,"d":b,"st":c});
        //rollback
        
        //Enqueue
        $A.enqueueAction(action);
		
	},
    clear: function(component, event, helper) 
    {
        
        
        
        
        
    }
})