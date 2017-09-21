/**
 * Created by stevendykstra on 9/14/17.
 */

public with sharing class NewCaseListController {
    public List<Case> getNewCases(){
        List<Case> results = [SELECT Id, CaseNumber FROM Case WHERE Status = 'New'];
        return results;
    }
}