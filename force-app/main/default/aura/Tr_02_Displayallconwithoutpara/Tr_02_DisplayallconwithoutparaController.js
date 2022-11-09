({
	load : function(component, event, helper)
    {
        var cl = [
            {label:"ContactfirstName",fieldName:"FirstName"},
            {label:"ContactlastName",fieldName:"LastName"},
            {label:"ContactPhone",fieldName:"Phone",type:"phone"},
            {label:"ContactEmail",fieldName:"Email",type:"email"},
            
            
            
        ];
            component.set("v.col",cl);
            //get apex method
            
            var c = component.get("c.allcon");
            //no para
            
            //rollback
            c.setCallback(this,function(response){
                                         var state = response.getState(); 
                                         if(state =='SUCCESS') 
                                          {
                                             var result = response.getReturnValue();
                                             component.set("v.ccl",result);
             
                                            }
             
            });
            
            //enqueue action
            $A.enqueueAction(c);
            
		
	}
})