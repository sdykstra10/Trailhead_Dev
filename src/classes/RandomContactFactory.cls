/**
 * Created by stevendykstra on 9/1/17.
 */

public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer numcon, String lastname){
        List<Contact> randomContact = new List<Contact>();

        for(Integer i = 0; i < numcon; i++){
            randomContact.add(new Contact(FirstName = 'Test ' + i, LastName=lastname ));
        }

        return randomContact;
    }
}