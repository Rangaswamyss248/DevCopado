trigger NumberOfContacts on Contact(after insert,after delete) {
if(trigger.isinsert||trigger.isdelete)
{
    CountContact.countContacts(trigger.new,trigger.old);
}
}