trigger TR_Phone_Email on Contact (before insert)
{
    List<Contact> cc = Trigger.new;
    
    for(Contact eac:cc)
    {
       if(eac.Phone == NULL && eac.Email == NULL)
       {
           eac.Phone = '999';
           eac.Email = 'no@email.com';
       }
        
    }

}