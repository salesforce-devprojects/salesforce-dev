import { LightningElement } from 'lwc';

export default class P2cCommunitcation extends LightningElement 
{
    progressvalue=10;
    changeHandler(event)
    {
        this.progressvalue = event.target.value;
    }
    handleClick(event)
    {
        this.template.querySelector('c-child-reset-component').setsliderreset();
    }
}