({
    sub : function(component, event, helper)
    {
		component.set("v.empname","Sreeram");
        component.set("v.empage","26");
        
	},
    cl : function(component, event, helper)
    {
		component.set("v.empname",null);
        component.set("v.empage",null);
        
	}
})