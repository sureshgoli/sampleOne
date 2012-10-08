public with sharing class SearchController {

    public String getResults() {
        return null;
    }


private String Product_Name{get;set;}
private Integer Product_Id{get;set;}

private List<Account> results{set;get;}

public void executeOne()
{
   
            
 results = [SELECT ID,NAME FROM ACCOUNT];

System.debug('  ----   welcome   ----  '+results);
        
        
                
}

}