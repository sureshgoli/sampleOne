trigger updateAccountManager on Account (after Update) {
Map<id,Account> parentMap = new Map<id,Account>();
List<Account> childAccounts = new List<Account>();
for(Account a :trigger.new){
parentMap.put(a.Id,a);
}

}