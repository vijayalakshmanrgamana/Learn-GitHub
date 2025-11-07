public with sharing class getAccountWire {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountWire(String searchingName) {
        return [
            SELECT Id, Name, Phone
            FROM Account
            WHERE Name LIKE :('%' + searchingName + '%')
        ];
    }
}