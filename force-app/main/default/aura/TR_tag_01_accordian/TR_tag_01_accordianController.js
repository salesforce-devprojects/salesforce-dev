({
	toggle : function(component, event, helper) 
    {
        var openSections = event.getParam('openSections');
        
        if(openSections.length===0)
        {
            component.set('v.activesectionmessage','All sections are closed');
        }
        else
        {
            component.set('v.activeSectionmessage', "Open sections: " + openSections.join(', '));
        }
		
	},
    
  
      handle : function(component,event,helper)
    {
        var openSections = event.getParam('openSections');
        
    }
})