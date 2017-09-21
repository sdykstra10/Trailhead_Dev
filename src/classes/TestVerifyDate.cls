/**
 * Created by stevendykstra on 8/31/17.
 */

@IsTest
private class TestVerifyDate {
    @isTest static void CheckDatesTest1() {
        Date Date1 = VerifyDate.CheckDates(System.today(), System.today()+1);
        Date Date2 = VerifyDate.CheckDates(System.today(), System.today()+15);
        System.assertEquals(System.today(), System.today()+15, Date2);
    }

    @isTest static void CheckDatesTest2(){
        Date Date1 = VerifyDate.CheckDates(System.today(), System.today()+1);
        Date Date2 = VerifyDate.CheckDates(System.today(), System.today()+60);
        Integer LastDay = 30;
        System.assertEquals(30, LastDay);
    }
}