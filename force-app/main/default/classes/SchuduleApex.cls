public class SchuduleApex implements Schedulable
{
    Public Void Execute(SchedulableContext ss)
    {
        
        Batch_Apex_Eg1 cc = new Batch_Apex_Eg1();
        Database.executeBatch(cc);
        
      /*  //Exceution Process
        SchuduleApex vv = new SchuduleApex();

//             ss mm hh dd m   w  y
String CRON = '00 27 12 12 01 ? 2022';

string st = system.schedule('HA', CRON, vv);
*/
    }

}