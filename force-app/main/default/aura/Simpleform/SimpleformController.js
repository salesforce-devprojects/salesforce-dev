({
	clickme : function(component, event, helper)
    {
        
        var a = component.get("v.accname");
		var b = parseInt(component.get("v.anualal"));
        var c = component.get("v.CampNa");
        var d = component.get("v.CampTy");
 
        
        
        
       //calling apex class
       var action = component.get("c.Main");
     //set parametres
        action.setParams({"Anm":a, "Al":b, "CamNm":c,"CamT":d});
        
      //enqueue action
      
        $A.enqueueAction(action);
	}
})