Public virtual class ListPratisce
{
    /*
List Properties
1.List is unordered it means whenever we are inserting it will be give o/p as same
2.List Allows Duplicates
3.List will follow Index
4.If u want to access particualr elements then will access based on index
5.List can be any type it means list is used in primivite,sobject,wrapperclass,apexclass,triggers and so on....
6.List have so many methods available will see all those in this class.
7.List can be allocated statically and dynamically so both are possible in list
8.List can be sorted using sort function
9.The memory allocation in list is continuous memory location with refrence to index
10.Muting is possible in the list will see diff b//w call by value and call by reference.
11.Memory allocation after exceuting in the list is with sorting techinque as this is backend logic by compile.        
*/
    Public Static Void Main()   //Using Static Method.
    {
        LstDeclarationDynamic();
        LstStaticMemoryAlloc();
        
        
        
    }
    Static Void LstDeclarationDynamic()  //Dynamic Memory Allocation
    {
        //Declaration Syntax
        //List<any_type> = new List<any_type>();
        
        //this any_type can be primitive,sobject,wrapper,apex............
        List <Integer> ii = new List<Integer>();  //Primitive type of list
        //Adding List elements can be done in 2 ways
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
        List <String> ss = new List<String>{'Sai','Sreeram','Sachin','Tendulkar','Rohith','Mumbai'};
            system.debug('The added elements in the list by using seperator is'+ss);
      system.debug('The list of index is ' +ss.get(3));
    }
    
    Static Void LstStaticMemoryAlloc()
    {
        //Static memory allocation means will give size based on that only will add elements it means
        //we are restricting the size of list statically but if u add with () these brackets it will add
        //as list is elastic so it will accept rather than size but if u try to add with [] square brakets
        //list acts like array and it wont allow to add beyond the size so as its meaningful to static 
        //if u add more than size with use add(_elemt)
        
        //Syntax of Static memory allocation using array
        //List<data_type> <varaible> = new List<datatype>[];
        
        Try
        {
            List<Integer> jj = new Integer[3]; //it will give first 5 places null then after that it will add remaining elemnts
            jj[0] = 3;
            jj[1] = 5;  // if u wrote in this way this list will act as array and cant accept outside memroy
            jj[2] = 6;
            // jj[3] = 9; // this will be out of bond when u try to exceute it will throw array so better 
            // this will wrote in try catch block
            jj.add(55); // this will accept as list is elastic
            
            
            system.debug('The static elements with size in the list are is'+jj);
        }
        Catch(Exception e)
        {
            system.debug('The Static exceution will fail and the error is '+e.getMessage());
        }
        
        
    }
    
    Public Static Void LstFunctions()
    {
        LstAdd();
        LstAddall();
        Remove();
        Clear();
        AddatIndex();
        Clone();
        Contains();
        equals();
        GetIndex();
        SobjectType();
        HashCode();
        isEmpty();
        Iterator();
        SetIndex();
        Size();
        SortLst();
        ToString();
    }
    
    Static Void LstAdd()
    {
        //This will add the elements in the list using add function
        List<Integer> kk = new List<Integer>();
        kk.add(55);
        kk.add(66);
        kk.add(77);
        System.debug('The List elements with add method  are'+kk);
    }
    
    Static Void LstAddall()
    {
        //this add all function will add all elements from one list to empty list
        List<String> ss = new List<String>{'Sai','Sachin','Rohit','MumbaiIndians'};
            system.debug('The list elements are'+ss);
        List<String> em = new List<String>();
        system.debug('The empty new List em are'+em);
        ss.addAll(em);
        system.debug('The added elements in empty list is'+em);
    }
    Static Void Remove()
    {
        //this remove function will remove the element based on index
        List<Integer> ij = new List<Integer>{1,3,5,6,7,87,88,99};
            system.debug('The list elements before remove operation  are'+ij);
        ij.remove(5);
        system.debug('The final list is with removing index no 5th is'+ij);
    }
    
    Static Void Clear()
    {
        //this will clear the entire list
        List<String> ss = new List<String>{'Hari','Sowjanya','Souraya'};
            system.debug('The list elements before clear operation are'+ss);
        ss.clear();
        system.debug('The list after clear operation is '+ss);
    }
    Static Void AddatIndex()
    {
        List<Integer> ii = new List<Integer>{88,44,66,77};
            system.debug('The list elements before add at index operation is'+ii);
        ii.add(2,100);
        system.debug('The added element at index 2 and element is 100 and list elements are'+ii);
    }
    
    Static Void Clone()
    {
        //copying content of one list to another list as by using muting method .
        List<Integer> aa = new List<Integer>{55,67,888,99};
            system.debug('The list of elements before clone operation'+aa);
        List<Integer> copy = new List<Integer>();
        copy = aa.clone();
        system.debug('The cloned list is'+copy);
        
    }
    
    Static Void Contains()
    {
        //this contains function will check wheather the element is there or not returns true or false
        List<String> ss = new List<String>{'hh','aa','bb','cc','dd'};
            system.debug('The list elements before contains operation is '+ss);
        Boolean result = ss.contains('cc');
        
        if(result)
        {
            system.debug('The list have that element '+ss);
        }
        else
        {
            system.debug('No element what contains function have');
            
        }
        
    }
    
    Static Void equals()
    {
        //this equals function will compare both the list of elements wheather it is equal or not
        List<Integer> ii = new List<Integer>{11,33,44,55};
            List<Integer> jj = new List<Integer>{11,33,55};
                if(ii==jj)
            {
                system.debug('The list elements of ii are'+ii);
                system.debug('The list elements of jj are'+jj);
            }
        else
        {
            system.debug('Both the lists are not equal');
        }
    }
    
    Static Void GetIndex()
    {
        List<Integer> ii = new List<Integer>{11,45,66,5445,664,34};
            system.debug('The elements in the lists are'+ii);
        Integer j = ii.get(5);
        system.debug('The index 5th index pos of element in the list is'+j);
    }
    Static Void SobjectType()
    {
        //this sobjectType is used to find the sobjecttype
        sObject ss = [Select id,Name from Account Limit 1];
        system.debug('The sobject type of ss is'+ss.getSobjectType());
    }
    
    Static Void HashCode()
    {
        List<Integer> ii = new List<Integer>{554,6654,655,44,66};
            system.debug('The list elements are'+ii);
        Integer jj = ii.hashCode();
        system.debug('The hascode of corresponding list elements are'+jj);
        
    }
    
    Static Void isEmpty()
    {
        List<Integer> jj = new Integer[0];
        system.debug('The list elements are'+jj);
        Boolean bb       = jj.isEmpty();
        if(bb)
        {
            system.debug('The list is empty');
        }
        else
        {
            system.debug('The list elements are'+bb);
        }
    }
    
    Static Void Iterator()
    {
        //this method ittrators the list of elements with previous keyword and next keyword
        //same as like loops
        List<Integer> jj = new List<Integer>{44,55,677,88,33,59,99,102};
            system.debug('The list elements before iteration are'+jj);
        //syntax
        //Iterator<data_type> variable = list<variable>.iterator();
        Iterator<Integer> it = jj.iterator(); //this will start iteration just intialiaztion
        system.debug('The First element of the list is '+it.next());
        system.debug('The Second element of the list is '+it.next());
        system.debug('The Third element of the list is '+it.next());
        system.debug('The Fourth element of the list is '+it.next());
        system.debug('The Fifth element of the list is '+it.next());
        system.debug('The Sixth element of the list is '+it.next());    
        
    }
    
    Static Void SetIndex()
    {
        //this set index function will set the value at particular index return type is void
        List<Integer> ii = new List<Integer>{1,3,53,5,66,6643,663,32};
            system.debug('The list of elements before set the operation is '+ii);
        ii.set(7, 99);
        system.debug('The setting value of element at index no 7 and element is 99 is'+ii);    
    }
    
    Static Void Size()
    {
        List<Integer> ii  = new List<Integer>{66,656,43,553,5543,53};
            system.debug('The list elements before size operation are '+ii);
        Integer jj = ii.size();
        system.debug('The size of the list are'+jj);
        
    }
    Static Void SortLst()
    {
        //this will sort the list and return type must be void
        List<Integer> ii = new List<Integer>{66,33,54,22,556,61,88,99,100};
            system.debug('The list elements before sorted are'+ii);
        ii.sort();
        system.debug('The list elements after sorted are'+ii);
        
    }
    Static Void ToString()
    {
        //this toString method will convert list to string
        List<Integer> ii = new List<Integer>{7273,3662,5736,276};
            system.debug('The list of elements before string operation are '+ii);
        String bb = ii.toString();
        system.debug('The list after converted to string are '+bb);
    }
    
}