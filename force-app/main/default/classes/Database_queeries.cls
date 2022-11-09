public class Database_queeries
{
    
    
    Public Void Main()
    {
        
       Basicquery();
       Basicpluswhere();
       OrderB();
       Des();
       Nul();
       Lik();
       logi();
       Rel();
       Aggre();
       GrupBy();
        
    }
    Public Void Main2()
    {
        SoBasic();
        NameSo();
        EmailFie();
        PhoneFie();
        Limt();
        Wher();
        Offset();
        OrderbY();
        
    }
    Void Basicquery()
    {
        List<Account> acc = new List<Account>();
        
        acc = [select id,Name from Account];
        
        system.debug('The list of accounts are '+acc);   
        
    }
    Void Basicpluswhere()
    {
        List<Account> acc = new List<Account>();
        acc = [select id,name,phone,rating,industry from account where rating = 'Hot' Limit 10];
        system.debug('The list of accounts with where clause is '+acc);
        Set<Account> ss = new Set<Account>();
        ss.addAll(acc);
        system.debug('The set elements copied from list are '+ss);
        
    }
    
    Void OrderB()
        // 0-9 (48)  //A-Z(65-96)  //a-z (97-122)
     {
        List<Account> acc = new List<Account>();
         //this query will fetch records order by rating as null value first based on ASCII(0-48)
        acc = [select id,name,phone,rating,industry from account order by rating  Limit 10];
         system.debug('The list of elements order by rating with limit 10 is '+acc);
        
     }
    
    Void Des()
    {
        List<Account> acc = new List<Account>();
        //orderby decs where starts from bottom to top and null values will be at bottom based on Ascii
         acc = [select id,name,phone,rating,industry from account order by rating desc Limit 10];
        system.debug('The list of elements order by rating with limit 10 and in desc is '+acc);
    }
    
   Void Nul()
   {
       List<Contact> cc = new List<Contact>();
       cc = [select id,Name,Email from Contact where Email<>Null Limit 10];
       system.debug('The list of elements ' +cc);
   }
    Void Lik()
    {
         List<Lead> ld = new List<Lead>();
        ld = [select id,name,industry,rating from lead where rating Like '%v%'];
        system.debug('The lead list from like operator is '+ld);
    }
    Void logi()
    {
        //logical operators  and,or,not
         List<Lead> ld = new List<Lead>();
        ld = [select id,name,rating,industry from lead where rating <>null and industry<>null and industry = 'Agriculture'];
        system.debug('The lead list using and operator fetching with agricuturle '+ld);
        
        //or operator
        List<Lead> ld1 = new List<Lead>();
        ld1 = [select id,name,phone,industry,rating from lead where phone<>null or rating = 'Hot'];
        system.debug('The lead list with or operator'+ld);
        
        //not operator
        
           List<Lead> ld2 = new List<Lead>();
          ld2 = [select id,name,phone,industry,rating from lead where rating!= 'hot' and rating<> Null Limit 10 ];
          system.debug('The lead list not operator '+ld2);
           
        
    }
    
    Void Rel()
    {
        //Parent to child relationship
          List<Account> ld3 = new List<Account>();
          ld3 = [select id,name,phone,(select id,name,phone from contacts) from account limit 10];
        system.debug('The parent to child relationship with account and contact is '+ld3);
    
    }
    
    Void Aggre()
    {
        //first aggregate functions are 
           //1.Count
           //2.Max
           //3.Min
           //4.Avg
           //5.Sum
         //Basic Aggregrate syntax
         
        Integer Count = [Select count() from Account]; //this will count no of account records
         system.debug('The count of Accounts are   '+count);
        
        
        //we can keep agrregrate function with field inside
        
        //here when we are using agrregate function inside with field we have to use AggregateResult[] <variable_name>
        
          AggregateResult[] Count1 = [Select count(rating) from Account];
        system.debug('The rating field filled inside acccount are '+Count1);
        
        
        AggregateResult[] Count2  = [Select Max(Industry) from Account];
            system.debug('The Max industry fields inside account are '+Count2);
        
        //Calculate sum,min,max,avg annunaul reveneu in account
        //When ur doin agrregrate with the field of object use alias name and in output use get method
        
        AggregateResult[]  Count3  = [Select Sum(AnnualRevenue) Su,Max(AnnualRevenue) Ma,Min(AnnualRevenue) Mi,Avg(AnnualRevenue) Av from Account];
          for(AggregateResult res :Count3)
          {
             system.debug('The sum of Annual revenue is =========>'+res.get('Su'));
             system.debug('The Max of Annual revenue is =========>'+res.get('Ma'));
             system.debug('The Min of Annual revenue is =========>'+res.get('Mi'));
             system.debug('The Avg of Annual revenue is =========>'+res.get('Av'));
          }
        
    }
       Void GrupBy()
       {
           
           //Group by is a caluse where it will group by using one field here we use aggregate function
           //with alias name and group by with field so for each record will find the max,min,avg,sum of the
           //particular field
           
        
           //ThumbRule-->>>> when we are using groupby caluse we should be using that querry fields no other fields
           //not been used 
           
           //ThumbRule2 ---->IF ur using group by caluse in soql query with agrregate function it will return the list of
           //aggregate result
           
           
          List<AggregateResult> re = [Select stagename,Sum(Amount) aa ,Min(Amount) mi,Max(Amount) ma,Avg(Amount) av from Opportunity group by StageName];
           
           for(AggregateResult ar :re)
           {
               system.debug('The Sum of Amount with group by stageName is ===>'+ar.get('aa')+ar.get('StageName'));
               system.debug('The Min of Amount with group by stageName is ===>'+ar.get('mi')+ar.get('StageName'));
               system.debug('The Max of Amount with group by stageName is ===>'+ar.get('ma')+ar.get('StageName'));
               system.debug('The Avg of Amount with group by stageName is ===>'+ar.get('av')+ar.get('StageName'));
           }
           
           

}
    
    Void txt()
    {
        List<Account> aa = new List<Account>();
        aa =[Select id,name,txtarea__c,txtarealong__c,txtarearich__c,txtenc_cr__c from Account where name = 'newtxt'];
        for(Account a : aa)
        {
            system.debug('The tex_area is '+a.txtarea__c);
             system.debug('The tex_arealong is '+a.txtarealong__c);
             system.debug('The tex_area rich  is '+a.txtarearich__c);
             system.debug('The tex_area encrypted is  is '+a.txtenc_cr__c);
            
        }
        

    }
    
    //Syntax 
    // QUERY EDITOR - FIND {<String>} IN [Optional]<Name fields>,<Email fileds>,<Phone Fields> ...*<All fields>* Returning <Sobject>(<api_Names>....[Where..<condtion>][Reamining_Condtions])
    // APEX DevConsole - List<List<Sobject>> <variable_name> = [FIND : '<STRING>'......SAME AS LIKE QUERY EDITOR];
    Void SoBasic()
    {
       List<List<SObject>> searchList = [FIND : 'sai' IN ALL FIELDS RETURNING Account(Name),Contact(FirstName,LastName)];
       
        system.debug('The list of list of sobjects are '+searchList);
    }
    
    Void NameSo()
    {
        List<List<Sobject>> searchList2 = [FIND : 'sai' IN Name FIELDS RETURNING Account(Name),Contact(Name)];
       
        system.debug('The list of list of sobjects are '+searchList2);
    }
    
    Void EmailFie()
    {
        List<List<Account>> searchList3 = [FIND : 'sai' IN Email FIELDS RETURNING Account(Name)];
       
        system.debug('The list of list of sobjects are '+searchList3);
    }
    Void PhoneFie()
    {
        List<List<SObject>> searchList4 = [FIND : '22' IN Phone FIELDS RETURNING Account(Name)];
       
        system.debug('The list of list of sobjects are '+searchList4);
    }
    
    Void Limt()
    {
        List<List<SObject>> searchList5 = [Find 'sree' in Name fields Returning Account(Rating,Name) limit 10];
       
        system.debug('The list of list of sobjects are '+searchList5);
    }
    
    Void Wher()
    {
        List<List<SObject>> searchList6 = [Find 'sai' in all fields Returning Account(Name,Phone,Rating where rating Like '%h%')];
       
        system.debug('The list of list of sobjects are '+searchList6);
        
    }
    
    Void Offset()
    {
        List<List<SObject>> searchList7 = [FIND 'sai' RETURNING Account(Name LIMIT 3 OFFSET 2)];
       
        system.debug('The list of list of sobjects are '+searchList7);
    }
    
    Void OrderbY()
    {
         List<List<SObject>> searchList8 = [Find 'sai' in all fields returning Account(Name,Rating,industry order by rating limit 3 offset 2)];
       
        system.debug('The list of list of sobjects are '+searchList8);
        
    }
    
}