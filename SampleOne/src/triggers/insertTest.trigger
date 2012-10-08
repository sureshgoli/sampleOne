trigger insertTest on ParentObj__c (after insert) {

for(ParentObj__c p:Trigger.new)
System.debug('-----from insertTest----'+p.NAME);



}