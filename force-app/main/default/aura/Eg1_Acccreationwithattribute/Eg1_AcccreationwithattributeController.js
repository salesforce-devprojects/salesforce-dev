({
	saveme : function(component, event, helper)
    {
        var cnm  = component.get("v.accname");
        var cph  = component.get("v.accPhone");
        var cfx  = component.get("v.accFax");
        var cind = component.get("v.accInd");
        var cal  = component.get("v.annualr");
        
        
        //Step4 call apex class
        var call = component.get("c.Acccreat");
       //Step 5 pass the parametres
        call.setParams({"nm":cnm,"Ph":cph,"Fx":cfx,"Ind":cind,"Al":cal});
       //Step 6 Invoke the method(displayed in page)
       
        
        //Step 7 Enquue the method(excute)
        
        $A.enqueueAction(call);
		
        
	}
})