/**
 * Created by stevendykstra on 9/20/17.
 */

public with sharing class OlderAccountsUtility {

    public static void updateOlderAccounts(){
        //Get the 5 oldest Accounts
        List<Account> oldAccounts = [SELECT Id, Description FROM Account ORDER BY CreatedDate LIMIT 5];

        //loop through the List of Accounts and update the Description field
        for(Account acct : oldAccounts){
            acct.Description = 'Heritage Account';
        }
        update oldAccounts;
    }
}