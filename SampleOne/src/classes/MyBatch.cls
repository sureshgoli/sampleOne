global class MyBatch implements Database.Batchable<sObject>{

   
   global Database.QueryLocator start(Database.BatchableContext BC){
      return Database.getQueryLocator('SELECT ID from Account');
   }

   global void execute(Database.BatchableContext BC, List<sObject> scope){
     for(integer i=0;i<10;i++)
     System.debug('====================Debug===================');     
    }

   global void finish(Database.BatchableContext BC){
   }
}