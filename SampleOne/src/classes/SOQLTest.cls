public with sharing class SOQLTest {

    public String getAccouts() {
        return null;
    }


   public String userinput;
   
   public List<String> lists{set;get;}
   public List<Address__c> accouts;
   public List<String> getLists()
   {
       return this.lists;
   }
   
   
   
   public SOQLTest()
   {
       
       accouts =[SELECT City__c FROM Address__c];
   
   }
   public void setuserinput(String str)
   {
   this.userinput=str;
   }
   
   public String getuserinput(String str)
   {   return this.userinput=str;
   }


public List<Address__c> acc{set;get;} 
public String strOne{set;get;}
public String getstrOne()
{
    return this.strOne='blabla';
}

public void setstrOne(String strin)
{
    this.strOne= strin;
}
public List<Address__c> get()
{
    acc = [SELECT City__c FROM Address__c];
    return acc;
}



}