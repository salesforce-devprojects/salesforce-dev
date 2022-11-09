/*Developed by : Sangeetha
 Requirement   : Creating a case whenever contact lanagugae is telugu
*/


@isTest
Public Class Cc
{
    Public Void Main()
    {
        List<Contact> cc = new List<Contact>();
          cc = [Select Id,Name,Languages__c from Contact where Languages__c = 'Telugu'];

          for(Contact eac :cc)
          {
              if(eac.Languages__c == 'Telugu')
              {
                  Case ca = new Case();
                  ca.Subject = 'This case is created by contact language telugu';
                  insert ca;

              }
          }



    }
}

/*
Developed by 





Developed by 





Developed by 

*/