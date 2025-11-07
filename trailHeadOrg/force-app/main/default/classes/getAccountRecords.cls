public with sharing class getAccountRecords {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountRecords() {
        return [SELECT Id, Name, Phone FROM Account];
    }

    @AuraEnabled
    public static List<Account> getAccountwithName(String name) {
        String containsName = '%' + name + '%';
        return [SELECT Id, Name FROM Account WHERE Name LIKE :containsName];
    }
}