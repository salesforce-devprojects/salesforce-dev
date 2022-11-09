({
	touchme : function(component, event, helper)
    {
        
       var ccnm =  component.get("v.cname");
	   var ccph =  component.get("v.cph");
    
    //Step 6 calling apex class
    
    var call = component.get("c.Concre");
    
    //Step 7 Passing parametres
    call.setParams({"Nm":ccnm, "Ph":ccph });
    //Setp 8 rollback result
    //
    
  //Setp9 enqueue 
   $A.enqueueAction(call);
    }

})