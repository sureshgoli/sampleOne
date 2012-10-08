trigger TriggerOnProfile on Profile__c (after insert) {
    
    List<Profile__c> p = Trigger.new;
    Profile__c pp = p[0];
    SampleClass.createAddress((pp.name__c).substring(1,2) );
System.debug('-----Profile   Inserted-----');
}