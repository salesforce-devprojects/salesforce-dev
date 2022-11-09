import { LightningElement } from 'lwc';
import { createRecord } from 'lightning/uiRecordApi';
export default class Account_create_wire extends LightningElement 
{
    accName;
    accPhone;
    accFax;
 
    nameHandler(event)
    {
        this.accName = event.target.value;
    }

phoneHandler(event)
{
    this.accPhone = event.target.value;
}
faxHandler(event)
{
    this.accFax = event.target.value;
}

clickme(event)
{
    const field = {'Name':this.accName,'Phone':this.accPhone,'Fax':this.accFax};

        const recordinput = {apiName:'Account',fields:field};
    
        createRecord(recordinput).then().catch();

   

}


}