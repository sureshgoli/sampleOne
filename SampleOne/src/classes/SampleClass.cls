global with sharing class SampleClass
{
    
        
    public static void createAddress(String str)
     {
            Address__c address = new Address__c();   
             address.City__c='City Onesss'+str;
             address.StreetOne__c='Street Ones'+str;
             address.Name='addressNames'+str;
                insert address;             
     } 
     
   public static testmethod void testMethodOne()
    {
               SampleClass.createAddress('suresh');  
    }   
}