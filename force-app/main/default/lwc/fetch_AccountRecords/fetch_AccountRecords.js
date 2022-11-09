import { LightningElement,wire } from 'lwc';
import getAccount from '@salesforce/apex/Account_get.getAccount';

          
var cb = [

    {"label":"Account Name","fieldName":"Name","type":"text"},
    {"label":"Account Industry","fieldName":"Industry"}



];



export default class Fetch_AccountRecords extends LightningElement 
{
    @wire(getAccount) account_details;
    col =cb;

}