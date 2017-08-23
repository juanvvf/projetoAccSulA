public with sharing class CorrigeNumberError {
	
	public static void CorrigeNumberError() {
		

		List<Contact> contatos = (List<Contact>) Trigger.new;

		for(Contact contatosPhoneError : contatos){
			if(contatosPhoneError.Phone == '(81)3250-456'){
				contatosPhoneError.Phone = '81 3250456';
				System.debug('corrigiu o numero');
			}
		}
 		
	}
 }
