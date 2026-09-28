Class {
	#name : 'HtmlStatement',
	#superclass : 'Statement',
	#category : 'Refactor-Form-Template-Method',
	#package : 'Refactor-Form-Template-Method'
}

{ #category : 'operating' }
HtmlStatement >> value: aCustomer [

	| result |
	result := '<h1>Rentals for <em>', aCustomer name, '</em></h1><p>'.
	aCustomer rentals do: [ :each |
		result := result, each title, ': ', each charge printString, '<br>' ].
	result := result, '<p>You owe <em>', aCustomer totalCharge printString, '</em></p>'.
	^ result
]
