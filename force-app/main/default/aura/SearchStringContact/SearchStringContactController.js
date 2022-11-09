({
	searchme : function(component, event, helper) 
    {
        var col  = [
            
            {label:"Contact LastName",fieldName:"Name",type:"text"},
            {label:"Contact Phone",fieldName:"Phone",type:"phone"},
            {label:"Contact Email",fieldName:"Email",type:"email"},
            
            
            
            
            
        ];
            component.set("v.cl",col);
            
            //get all data from componennt
           var serchtxt = component.get("v.st");
            //call apex method
            var action = component.get("c.main");
            //set paramas
            action.setParams({"stxt":serchtxt});
            
            //rollback
            
            action.setCallback(this,function(response){
              var state = response.getState();
                 if(state =='SUCCESS')
            {
               var result = response.getReturnValue();
            component.set("v.ccl",result);

            }
            
            
            });
            
            //step4 enqueueaction
        
            $A.enqueueAction(action);
        
		
	}
})