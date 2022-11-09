trigger Tr_01_Asss on Passenger__c (before update) 
{
    List<Passenger__c> pl = Trigger.new;
    
    for(Passenger__c Eap :pl)
    {
        if(Eap.Passenger_Mobile_Number__c==Null)
        {
            Eap.Passenger_Mobile_Number__c.AddError('Mobile number should not be null while updating');
        }
    }
    
    
}