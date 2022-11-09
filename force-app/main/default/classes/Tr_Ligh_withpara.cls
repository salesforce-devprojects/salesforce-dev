Public class Tr_Ligh_withpara
{
    @AuraEnabled
    Public Static List<Account> accl(String seartxt)
    {
        String str = '%'+seartxt+'%';
        List<Account> acc = [Select id,Name,Phone,Rating from Account where Name like :str];
        return acc;
        
    }

}