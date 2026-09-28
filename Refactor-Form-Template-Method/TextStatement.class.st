Class {
	#name : 'TextStatement',
	#superclass : 'Statement',
	#category : 'Refactor-Form-Template-Method',
	#package : 'Refactor-Form-Template-Method'
}

{ #category : 'operating' }
TextStatement >> value: aCustomer [

	| result |
	result := 'Rental Record for ', aCustomer name, String cr.
	aCustomer rentals do: [ :each |
		result := result, String tab, each title, String tab, each charge printString, String cr ].
	result := result, 'Amount owed is ', aCustomer totalCharge printString.
	^ result
]
