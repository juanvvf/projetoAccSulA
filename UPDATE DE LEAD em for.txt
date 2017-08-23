public with sharing class AccountProcessor {
		
		@future
		public static void countContacts(List<Id> recordIds) {
			List<Account> accounts = [Select Id, Number_of_Contacts__c, (Select Id from Contacts) from Account where Id in :recordIds];
		
			 for(Account accts : accounts )	{

			 	accts.Number_of_Contacts__c = accts.Contacts.size();	
      		}
      		update accounts;
		}
	}