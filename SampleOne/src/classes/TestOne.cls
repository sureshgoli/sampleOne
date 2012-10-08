public with sharing class TestOne
{    
        public void testOne()
        {
            System.debug('----sample----');
            sObject s= new Account();
            System.assert(s.getsObjectType() == Account.sObjectType);

        }

}