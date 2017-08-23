public with sharing class AdicionandContatoAConta {
	public AdicionandContatoAConta() {
		
		Account acct = new Account(
			Name='SFDC COMPUTING', 
			Phone='33243198', 
			NumberOfEmployees=50, 
			BillingCity='San Francisco');

		insert acct;

			ID acctID = acct.ID;


		Contact con = new Contact(
			FirstName='Carol Passos', 
			LastName = 'de Souza',
			Phone = '98898898',
			Department = 'Wingo',
			AccountId = acctID
			 );

		insert con;


		Account acct2 = new Account(

    Name='The SFDC Query Man',
    Phone='(310)555-1213',
    NumberOfEmployees=50,
    BillingCity='Los Angeles',
    Description='Expert in wing technologies.');

insert acct2;


	}
}