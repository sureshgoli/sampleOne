public with sharing class sampleASController {

Integer count =0;

    public PageReference incrementCounter() {
        System.debug('-----suresh-----');
        count++;
        return null;
    }
    
    public Integer getCount(){
    return count;
    }

}