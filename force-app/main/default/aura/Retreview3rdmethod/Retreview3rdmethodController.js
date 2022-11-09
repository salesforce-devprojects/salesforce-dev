({
	loadme : function(component, event, helper) 
    {
        
        //Create a columns requires to display like a table and each colunm should be 
        //in json format
        
       var c = [
           
           
           {label:"ContactLastName",fieldName :"LastName",type:"text"}, //here type is formating
           {label:"Contact Phone",fieldName :"Phone",type:"Phone"},
           {label:"Contact Email",fieldName :"Email",type:"email"},
           
           
       ];
           component.set("v.col",c);
           
           
           //step1 call apex
          
           var action = component.get("c.allcont");
         
           //Step2 no parametres to pass
          
           //step3 roolback
          
           action.setCallback(this,function(response){
            
           var state = response.getState();
             if(state == 'SUCCESS')
           {
           var result = response.getReturnValue();
           component.set("v.con",result);
           }
           
           
           });
           
           //step4 enqueue
           $A.enqueueAction(action);
		
	}
})