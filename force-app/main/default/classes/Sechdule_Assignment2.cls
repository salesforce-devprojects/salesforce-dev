public class Sechdule_Assignment2 implements Schedulable 
{
 Public Void Execute(SchedulableContext bb)
 {
     Batch_Assignment2 bc = new Batch_Assignment2();
     Database.executeBatch(bc);
 }

}