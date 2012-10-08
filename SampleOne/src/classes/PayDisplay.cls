public with sharing class PayDisplay {

     public String getCustomsettingsVal() {
            
        return 'bla bla';
    }


    public PageReference getCustomSettings() {
    
    Map<String, Info__c> info= Info__c.getAll();
        
        // Sort them by name
        for(String abc:info.keySet())
            customsettingsVal +=  info.get(abc).SiteUrl__c;
    
       // List<String> urls= new List<String>();
        //urls.addAll(info.keySet());
        //urls.sort();
      //  customsettingsVal = urls.get(1).SiteUrl__c.toString();
      
     // Info__c info1 = Info__c.getInstance('Search URL');
       //   customsettingsVal =  info1.SiteUrl__c;
    
    
    
    
    
        return null;
    }


    public String getAcc() {
        return null;
    }


    public PageReference concatStrings() {
        return null;
    }


    public PageReference callWSDL() {
        wsdlResp = 'WSDL String Response....';
        return null;
    }
public String customsettingsVal{set;get;}
public String selectValue{set;get;}
public Boolean status{get; set;}
public List<SelectOption> Options{set;get;}
public String dayOfWeek{get; set;}
public String wsdlResp{get;set;}
public List<Account> acc = [SELECT ID,Name FROM ACCOUNT];
public PayDisplay()
{
 acc = [SELECT ID FROM ACCOUNT];
 Map<String, Schema.SObjectType> m = Schema.getGlobalDescribe() ; 
 Schema.SObjectType s = m.get('Account') ;   
 Schema.DescribeSObjectResult r = s.getDescribe() ; 
   Options = new List<SelectOption>();
   
Options.add(new SelectOption('-- None --','-- None --'));
   
    Schema.DescribeFieldResult statusFieldDescription = PicklistSample__c.empList__c.getDescribe();   
    
        for (Schema.Picklistentry picklistEntry : statusFieldDescription.getPicklistValues())
        {
        Options.add(new SelectOption(picklistEntry .getValue(),picklistEntry .getLabel()));
        }    
   
}
public void updatePosition()
{
    status = true;   
    
   Date d = date.newinstance(1947,8, 16);  
    datetime myDate = datetime.newInstance(d.year(), d.month(), d.day());  
   // dayOfWeek = myDate.format('EEEE');  
   dayOfWeek = '';
    
  /**  List<ParentObj__c> pObj = [SELECT ID,NAME,(SELECT ID,NAME FROM ChildObjs__r) FROM ParentObj__c];
    for(ParentObj__c p:pObj)
    {
     for(ChildObj__c c:p.ChildObjs__r)
   // dayOfWeek+= p.Name+c.Name;
    // dayOfWeek +='\n';
    } */
       
  /**  List<ChildObj__c> child = [SELECT ID,NAME,ParentObj__r.NAME  from ChildObj__c];
    
    for(ChildObj__c co:child)
    {
    
    dayOfWeek +=(co.NAME+co.ParentObj__r.NAME);
    dayOfWeek +='\n';
    }
    */
    
    List<ParentObj__c> abc = new List<ParentObj__c>();
    for(integer i =0;i<10;i++)
    {
        ParentObj__c p = new ParentObj__c();
        p.Name = 'ParentObj'+i;
        abc.add(p);    
    }
    insert abc;
}

public void setSelectValue(String str)
{
    this.selectValue =ApexPages.currentPage().getParameters().get('paramOne');
}
public String get()
{
    return this.selectValue;
}

public PageReference navigateToPage()
{
PageReference p = Page.success;
p.getParameters().put('paramOne','ParamOneValue');
return  p;

}
}