import { LightningElement } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
import My_Resoruce from '@salesforce/resourceUrl/Session_Expire_logo';


export default class LoginPage extends NavigationMixin(LightningElement) 
{
    logo = My_Resoruce;
    
    
    
    ButtonHandler(event)
    {
        window.open("https://login.us.bill.com/neo/login");
    }
    
}