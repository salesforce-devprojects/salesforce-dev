Public class WrapperDemoController 
{
    
    public List<AccountWrapper> listAccountWrapper {get; set;}
    public List<Account> selectedAccounts{get;set;}
    
    public WrapperDemoController ()   //Consturctor
    {
        listAccountWrapper = new List<AccountWrapper>();  //intiallization
        searchRecord();
    }
    
    public void searchRecord()
    {
        listAccountWrapper.clear();
        for(Account a: [select Id, Name from Account limit 10])
        {
            listAccountWrapper.add(new AccountWrapper(a));
        }
    }
    
    public void processSelected()
    {
        selectedAccounts = new List<Account>();
        selectedAccounts.clear();
        for(AccountWrapper wrapAccountObj : listAccountWrapper)
        {
            if(wrapAccountObj.selected == true)
            {
                selectedAccounts.add(wrapAccountObj.acc);
            }
        }
    }
    
   
    
    
    // This is wrapper/container class.
    Public class AccountWrapper
    {
        public Account acc {get; set;}
        public Boolean selected {get; set;}
        
        Public AccountWrapper(Account a)  //consturctor
        {
            acc = a;
            selected = false;
        }
    }
    
}