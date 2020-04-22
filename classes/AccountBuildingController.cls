public class AccountBuildingController {
    @AuraEnabled
    public static List<Buildings__c> getbuildings(Id accId){
        List<Buildings__c> lstbuild = [select id,Name,Community__r.Name,Community__c,NoOfFlats__c,NoOfFloors__c from Buildings__c where Community__c=:accId];
        return lstbuild;
    }

}