public with sharing class SessionTestController {

public DateTime dt;
transient public DateTime dtOne;

public DateTime getdt()
{
if(dt==null)
dt = System.now();
return dt;
}

public DateTime dtOne()
{
if(dtOne==null)
dtOne = System.now();
return dtOne;
}
}