public  virtual class SetPratisce 
{
  

    /*
Set Properties
1.Set is ordered it means whenever we are inserting it will order values alphanumerically
2.Set Doenst  Allows Duplicates
3.Set has no Index
4.Set can be any type it means Set is used in primivite,sobject,wrapperclass,apexclass,triggers and so on....
6.Set have so many methods available will see all those in this class.
7.Set  can be allocated  only dynamically.
8.Set is already sorted so no sort function in  set.
9.Set doenst have continuous memory location.
        
*/
    Public Static Void SetMain()   //Using Static Method.
    {
        SetDeclarationDynamic();
        
    }
    Static Void SetDeclarationDynamic()  //Dynamic Memory Allocation
    {
        //Declaration Syntax
        //Set<any_type> = new List<any_type>();
        
        //this any_type can be primitive,sobject,wrapper,apex............
        Set<Integer> ii = new Set<Integer>();  //Primitive type of list
        //Adding Set elements can be done in 2 ways
        //1st way to use add method with variable
        //2nd Way to declare using with list as with seperated by ,
        
        //1st Way
        ii.add(1);
        ii.add(2);
        ii.add(5);
        ii.add(7);
        ii.add(9);
        system.debug('The added elements in the list are with add function'+ii);
        
        //2nd way with diff datatype
        Set<String> ss = new Set<String>{'Sai','Sreeram','Sachin','Tendulkar','Rohith','Mumbai'};
            system.debug('The added elements in the Set by using seperator is'+ss);
        
    }
    
    Public Static Void SetFunctions()
    {
        SetAdd();
        SetAddall();
        Remove();
        Clear();
        Clone();
        Contains();
        equals();
        SobjectType();
        HashCode();
        isEmpty();
        Iterator();
        Size();
        ToString();
        Containsall();
        Retainall();
    }
    
    Static Void SetAdd()
    {
        //This will add the elements in the list using add function
        Set<Integer> kk = new Set<Integer>();
        kk.add(55);
        kk.add(66);
        kk.add(77);
        System.debug('The Set elements with add method  are'+kk);
    }
    
    Static Void SetAddall()
    {
        //this add all function will add all elements from one list to empty list
        Set<String> ss = new Set<String>{'Sai','Sachin','Rohit','MumbaiIndians'};
            system.debug('The Set elements are'+ss);
        Set<String> em = new Set<String>();
        system.debug('The empty new Set em are'+em);
        ss.addAll(em);
        system.debug('The added elements in empty Set is'+em);
    }
    Static Void Remove()
    {
        //this remove function will remove the element based on index
        Set<Integer> ij = new Set<Integer>{1,3,5,6,7,87,88,99};
            system.debug('The Set elements before remove operation  are'+ij);
        ij.remove(5);
        system.debug('The final Set is with removing index no 5th is'+ij);
    }
    
    Static Void Clear()
    {
        //this will clear the entire list
        Set<String> ss = new Set<String>{'Hari','Sowjanya','Souraya'};
            system.debug('The Set elements before clear operation are'+ss);
        ss.clear();
        system.debug('The Set after clear operation is '+ss);
    }
    
    Static Void Clone()
    {
        //copying content of one list to another list as by using muting method .
        Set<Integer> aa = new Set<Integer>{55,67,888,99};
            system.debug('The Set of elements before clone operation'+aa);
        Set<Integer> copy = new Set<Integer>();
        copy = aa.clone();
        system.debug('The cloned Set is'+copy);
        
    }
    
    Static Void Contains()
    {
        //this contains function will check wheather the element is there or not returns true or false
        Set<String> ss = new Set<String>{'hh','aa','bb','cc','dd'};
            system.debug('The Set elements before contains operation is '+ss);
        Boolean result = ss.contains('cc');
        
        if(result)
        {
            system.debug('The Set have that element '+ss);
        }
        else
        {
            system.debug('No element what contains function have');
            
        }
        
    }
    
    Static Void equals()
    {
        //this equals function will compare both the list of elements wheather it is equal or not
        Set<Integer> ii = new Set<Integer>{11,33,44,55};
            Set<Integer> jj = new Set<Integer>{11,33,55};
                if(ii==jj)
            {
                system.debug('The Set elements of ii are'+ii);
                system.debug('The Set elements of jj are'+jj);
            }
        else
        {
            system.debug('Both the Sets are not equal');
        }
    }
    
    Static Void SobjectType()
    {
        //this sobjectType is used to find the sobjecttype
        sObject ss = [Select id,Name from Account Limit 1];
        system.debug('The sobject type of ss is'+ss.getSobjectType());
    }
    
    Static Void HashCode()
    {
        Set<Integer> ii = new Set<Integer>{554,6654,655,44,66};
            system.debug('The Set elements are'+ii);
        Integer jj = ii.hashCode();
        system.debug('The hascode of corresponding Set elements are'+jj);
        
    }
    
    Static Void isEmpty()
    {
        Set<Integer> jj = new Set<Integer>();
        system.debug('The Set elements are'+jj);
        Boolean bb = jj.isEmpty();
        if(bb)
        {
            system.debug('The Set is empty');
        }
        else
        {
            system.debug('The Set elements are'+bb);
        }
    }
    
    Static Void Iterator()
    {
        //this method ittrators the list of elements with previous keyword and next keyword
        //same as like loops
        Set<Integer> jj = new Set<Integer>{44,55,677,88,33,59,99,102};
            system.debug('The Set elements before iteration are'+jj);
        //syntax
        //Iterator<data_type> variable = list<variable>.iterator();
        Iterator<Integer> it = jj.iterator(); //this will start iteration just intialiaztion
        system.debug('The First element of the Set is '+it.next());
        system.debug('The Second element of the Set is '+it.next());
        system.debug('The Third element of the Set is '+it.next());
        system.debug('The Fourth element of the Set is '+it.next());
        system.debug('The Fifth element of the Set is '+it.next());
        system.debug('The Sixth element of the Set is '+it.next());    
        
    }
    
    
    Static Void Size()
    {
        Set<Integer> ii  = new Set<Integer>{66,656,43,553,5543,53};
            system.debug('The Set elements before size operation are '+ii);
        Integer jj = ii.size();
        system.debug('The size of the Set are'+jj);
        
    }
    Static Void ToString()
    {
        //this toString method will convert list to string
        Set<Integer> ii = new Set<Integer>{7273,3662,5736,276};
            system.debug('The Set of elements before string operation are '+ii);
        String bb = ii.toString();
        system.debug('The Set after converted to string are '+bb);
    }
    Static Void Containsall()
    {
        Set<String> ss = new Set<String>{'Sachin','Akhil','Govardhan','Harish'};
        Set<String> s1 = new Set<String>{'Sachin','Sai','Book'};
        Boolean bb = ss.containsAll(s1);
        if(bb)
        {
            system.debug('its true when both sets are same elements');
        }
        else
        {
            system.debug('No matching elements');
        }
    }
    
    Static Void Retainall()
    {
        //retains the set from list
        Set<Integer> ss = new Set<Integer>{11,33,55,66,88,7};
            List<Integer> ii = new List<Integer>{11,3};
            Boolean res = ss.retainAll(ii);
          system.debug('The retain elements from set to list are'+res);
    }
    
}