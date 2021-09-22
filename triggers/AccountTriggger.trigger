trigger AccountTriggger on Account (after insert) {
    List<Contact> con=new List<Contact>();
    for(Account acc: Trigger.new)
    {
        for(Integer i=0;i<acc.Contacts_to_be_created__c;i++)
        {
            Contact c=new Contact();
            c.AccountId=acc.Id;
            c.LastName='Contacts '+i;
            con.add(c);
        }
 
          
        } 
    insert con;
    }