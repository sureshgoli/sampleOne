public with sharing class myControllerOne {
private final Account account;
ID acid;
public myControllerOne(ApexPages.StandardController Controller) {
	
acid = ApexPages.currentPage().getParameters().get('id');
system.debug('acid'+acid);
account = [select id, name, site, NumberOfEmployees, Industry from Account where id = :acid];

}
public Account getAccount() {
return account;
}
public PageReference save() {
update account;
return null;
}
public PageReference cancel() {
return null;
}

@isTest
static void testMyAcc()
{
	Account acc = new Account(name='SampleOne',site='SiteOne',NumberOfEmployees=5,Industry='Accounting');
	insert acc;
	system.debug('acc'+acc);
	ApexPages.StandardController TControler = new ApexPages.StandardController(acc);
		myControllerOne con = new myControllerOne(TControler);
}
}