/**
 * Created by stevendykstra on 8/16/17.
 */

public class ContactSearch {
    public static List<Contact> searchForContacts(String lname, String pcode){
        List<Contact> con = [SELECT Id, Name FROM Contact WHERE LastName = :lname AND MailingPostalCode  = :pcode];

        return con;
    }
}