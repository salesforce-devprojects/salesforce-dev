<aura:application extends = "force:slds" >
     <aura:handler name = "new" event = "c:LE_01_Component_diag" action = "{!c.handle}"/>
    
        
    <lightning:layout>
     <lightning:layoutItem size = "6">
         <c:LC_01_Component_C1_Yellow/>
         <c:LC_01_Component_C11_Pink/>
         <c:LC_01_Component_C111_Brown/>    
        </lightning:layoutItem>
    
        
          <lightning:layoutItem size = "4">
              <c:LC_02_Component_C2_LightBLUE/>
              <c:LC_01_Component_C21_Gray/>
        </lightning:layoutItem>
    
    </lightning:layout>
	
</aura:application>