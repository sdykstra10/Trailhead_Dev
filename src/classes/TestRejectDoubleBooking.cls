/**
 * Created by stevendykstra on 9/25/17.
 */

@IsTest
private class TestRejectDoubleBooking {
    static testMethod void TestSingleBooking(){
        Datetime now = System.now();

        Speaker__c speaker = new Speaker__c(First_Name__c='John', Last_Name__c='Smith');
        insert speaker;

        Session__c session = new Session__c(Name='Some session', Session_Date__c = now);
        insert session;

        Session_Speaker__c assignment = new Session_Speaker__c(Session__c=session.Id, Speaker__c=speaker.Id);

        Database.SaveResult result = Database.insert(assignment, false);

        System.assert(result.isSuccess());
    }

    static testMethod void TestDoubleBooking(){
        Datetime now = System.now();

        Speaker__c speaker = new Speaker__c(First_Name__c='John', Last_Name__c='Smith');
        insert speaker;

        Session__c session1 = new Session__c(Name='Session 1', Session_Date__c=now);
        insert session1;
        Session__c session2 = new Session__c(Name='Session 2', Session_Date__c=now);
        insert session2;

        Session_Speaker__c assignment1 = new Session_Speaker__c(Session__c=session1.Id, Speaker__c=speaker.Id);
        insert assignment1;
        Session_Speaker__c assignment2 = new Session_Speaker__c(Session__c=session2.Id, Speaker__c=speaker.Id);
        insert assignment2;

        Database.SaveResult result = Database.insert(assignment2,false);

        System.assert(!result.isSuccess());
    }
}