/**
 * Created by stevendykstra on 8/28/17.
 */

trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Task> oppTasks = new List<Task>();

    for(Opportunity o : [SELECT Id, StageName FROM Opportunity WHERE Id IN :Trigger.new AND StageName ='Closed Won']){
           oppTasks.add(new Task(Subject = 'Follow Up Test Task', WhatId = o.Id));
    }
    if(oppTasks.size() > 0){
        insert oppTasks;
    }
}