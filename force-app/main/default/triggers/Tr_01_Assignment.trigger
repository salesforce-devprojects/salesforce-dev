trigger Tr_01_Assignment on Contact (before update) 
{
    List<Contact> Lc = Trigger.New;
    List<Contact> Lo = Trigger.Old;
    
    
    for(Contact EAC :Lc)
    {
        for(Contact EACO:Lo)
        {
            if(EAC.ID == EACO.ID && EACO.Phone ==NULL)
            {
                EAC.Phone.AddError('Phone number cant be empty while update');
                
            }
        }
    }
    

}