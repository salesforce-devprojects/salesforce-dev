({
	search : function(component, event, helper)
    {
        //Step 1 get the component and store it in variable
       
       let co = [
           
           {label:"Contact Name",fieldName:"Name"},
           {label:"Contact Email",fieldName:"Email",type:"Email"},
           {label:"Contact Phone",fieldName:"Phone",type:"phone"},
           
           
       ];
           component.set("v.col",co);
         
        let a = component.get("v.ss");
        
        //Step 2 call apex method
        
        let b = component.get("c.main");
        
        //Step3 set paramas (optional)
        b.setParams({"stxt":a});
        
        //Step 4 Response 
        
        b.setCallback(this,function(mounika){
            let state = mounika.getState();
              if(state =='SUCCESS')
              {
                  let result = mounika.getReturnValue();
                 component.set("v.cl",result);
              }
             
            
            
            
        });
      
        //step 5 enqueue action
        
        $A.enqueueAction(b);
        
		
	}
})