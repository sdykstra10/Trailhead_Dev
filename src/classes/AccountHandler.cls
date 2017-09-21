/**
 * Created by stevendykstra on 8/14/17.
 */

public class AccountHandler {
    public static Account insertNewAccount(String acctname){
        try{
            Account acct = new Account(Name = acctname);
            insert acct;

            return acct;
        } catch(DmlException e){
            return null;
        }
    }
}