trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {
    List<Task> tasks= new List<Task>();
        for(Opportunity opp:Trigger.New)
        {
            if(opp.StageName=='closed won')
            {
                tasks.add(new Task(Subject='Follow Up Test Task',
                                  WhatId=opp.id));
            }
           
            }
     if(tasks.size()>0){
         insert tasks;
        }
    

}