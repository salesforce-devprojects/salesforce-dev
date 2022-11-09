import { LightningElement } from 'lwc';
import getAccList from '@salesforce/apex/Getting_acc_list.getAccList';
export default class Imperative_calling_account extends LightningElement 
{
    acclist;
    loading = false;
    getacclist()
    {
        this.loading=true;
        getAccList().then(result=>{
            
            this.acclist = result;
            this.loading = false;

        }).catch(error=>{
           console.log('the error is '+error);
           this.loading=true;
        });

    }


}