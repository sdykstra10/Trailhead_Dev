/**
 * Created by stevendykstra on 8/22/17.
 */

trigger AccountAddressTrigger on Account (before insert, after update) {
    for (Account a : Trigger.new){
        if (a.BillingPostalCode != NULL && a.Match_Billing_Address__c == true){
            a.ShippingPostalCode = a.BillingPostalCode;
        }
    }
}