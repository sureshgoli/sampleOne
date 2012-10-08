trigger accountTrigger on Account (after insert) {
  List<Account> acc = Trigger.new;
  SampleClass.createAddress(acc[0].Name.substring(2,4));


}