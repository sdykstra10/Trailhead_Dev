/**
 * Created by stevendykstra on 9/1/17.
 */

@IsTest
private class TestRestrictContactByName {

    @isTest static void ContactValidNameTest() {
        Contact cont1 = new Contact();
        cont1.FirstName = 'Mike';
        cont1.LastName = 'Smith';
        cont1.Phone = '(615)222-2345';
        cont1.Email = 'msmith@email.com';

        Test.startTest();
        Database.SaveResult result = Database.insert(cont1, true);
        Test.stopTest();

        System.assert(result.isSuccess());
    }

    @isTest static void ContactInvalidNameTest(){
        Contact cont2 = new Contact();
        cont2.FirstName = 'John';
        cont2.LastName = 'INVALIDNAME';
        cont2.Phone = '(444)555-6789';
        cont2.Email = 'john@email.com';

        Test.startTest();
        Database.SaveResult result = Database.insert(cont2, false);
        Test.stopTest();

        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML', result.getErrors()[0].getMessage());
    }
}