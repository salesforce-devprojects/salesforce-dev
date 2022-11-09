({
	search : function(component, event, helper) 
    {
        var cl = [
            
            {label:"AccountName",fieldName:"Name",type:"text"},
            {label:"AccountPhone",fieldName:"Phone",type:"phone"},
            {label:"AccountRating",fieldName:"Rating",type:"text"},
            
            
        ];
            component.set("v.col",cl);
            
            //get the data from Component
            
            var ge = component.get("v.st");
            //call the apex class
            
            var action = component.get("c.accl");
            //set the paramertres
            action.setParams({"seartxt":ge});
            //rollback
            
            action.setCallback(this,function(response)
            {
             var state = response.getState();
                 if(state =='SUCCESS')
            {
               var result = response.getReturnValue();
                component.set("v.acl",result);
            
            }
            });
            
            //enqueueaction
            
            $A.enqueueAction(action);
		
	}
})