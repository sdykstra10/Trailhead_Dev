/**
 * Created by stevendykstra on 8/17/17.
 */

public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String name){
        List<List<SObject>> searchList = [FIND :name IN ALL FIELDS RETURNING Lead(FirstName, LastName), Contact(FirstName, LastName)];

        return searchList;
    }
}