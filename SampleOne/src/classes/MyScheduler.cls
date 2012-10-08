global class MyScheduler implements Schedulable{
   global void execute(SchedulableContext SC) {
      MyBatch batch = new MyBatch(); 
      Database.executeBatch(batch);
   }
}