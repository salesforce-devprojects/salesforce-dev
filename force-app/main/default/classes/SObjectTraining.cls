public class SObjectTraining 
{
    
    
    Public Void Main()
    {
        Acc();
        Con();
        Le();
        Paa();
    
    }
    
    Void Acc()
    {
        Account a = new Account();
        a.Name = 'Vihari';
        a.Phone = '7762';
        a.AnnualRevenue = 700;
        a.Rating = 'Very very cold';
        insert a;
        a.Name = 'Hanuma Vihari';
        update a;
        a.Phone = '6666';
        upsert a;   
    }
      Void Con()
      {
          Contact cc = new Contact();
          cc.LastName = 'Wriddhiman Saha';
          cc.Phone  = '872';
          insert cc;
          
      }
     Void Le()
     {
         Lead ll = new Lead();
         ll.LastName = 'New Lead11';
         ll.Status = 'Hot';
         ll.Company = 'Abc';
         ll.AnnualRevenue = 99;
         insert ll;
         ll.Rating = 'Very HOT';
         ll.LastName = 'New Update lead12';
         ll.AnnualRevenue = 891;
         ll.Company = 'ABBC';
         upsert ll;
        
     }
     Void Ta()
     {
         Task tt = new Task();
         tt.Status ='Open';
         tt.Description ='This is a new task generated through apex';
         tt.Subject ='New task about task creation';
         insert tt;
     }
    
     Void Paa()
     {
         Passenger__c pp = new Passenger__c();
         pp.Passenger_First_Name__c ='Syed';
         pp.Passenger_Last_Name__c  ='Alam';
         insert pp;
         pp.Passenger_First_Name__c ='Sunanina';
         update pp;
         
       
         
     }
   /* 
    Void Rel()
    {
        Passenger__c pp = new Passenger__c();
        
        pp.Passenger_First_Name__c = 'Sreeram';
        pp.Passenger_Last_Name__c  = 'Sai';
        pp.Passenger_Mobile_Number__c = 7777777777;
        insert pp;
        
     Fee_and_Payment__c ff = new Fee_and_Payment__c();
        ff.Mode_of_Payment__c = 'Cash';
       ff.Passenger__c   = pp.Id;
        insert ff;
    }
*/
    
   
     
    

}