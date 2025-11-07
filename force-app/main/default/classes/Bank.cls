public class Bank {

    public static void bank(){
        List<Bank__c> banklist = new List<Bank__c>();
        for(Integer i=0; i<5; i++){
            Bank__c BK = new Bank__c();
            BK.Name = 'Bank Account :'+i;
            banklist.add(BK);
        }
        insert banklist;
        List<Bank_Statement__c> bankSTlist = new List<Bank_Statement__c>();
        for(Bank__c bn : banklist){
            for(Integer i=0; i<5; i++){
            Bank_Statement__c BKST = new Bank_Statement__c();
            BKST.Name = 'Bank Bank Statement :'+i;
            BKST.Bank__c = bn.id;
            bankSTlist.add(BKST);
        }
        }
        insert bankSTlist;
    }
}