public class TestSOQL {

public List<Address__c> address;
public Map<integer,String> person;

public TestSOQL()
{
person = new Map<integer,String>();

for(integer i=0; i <10; i++)
person.put(i,'name'+i);

}

public String inValue;
public void setInValue(String str)
{
this.inValue = str;
}
public String getInValue()
{
return this.inValue;
}

public List<Address__c> getAddress()
{
address = [SELECT City__c,StreetOne__c,Continent__c FROM Address__c];
return this.address;
}




}