import { LightningElement,api } from 'lwc';

export default class ChildResetComponent extends LightningElement {
    val;
    changeHanlder(event)
    {
        this.val = event.target.value;
    }

  @api setsliderreset()
    {
        this.val = 50;
    }
}