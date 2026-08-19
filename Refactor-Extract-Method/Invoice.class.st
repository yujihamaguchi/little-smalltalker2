Class {
	#name : 'Invoice',
	#superclass : 'Object',
	#instVars : [
		'customer',
		'amount'
	],
	#category : 'Refactor-Extract-Method',
	#package : 'Refactor-Extract-Method'
}

{ #category : 'instance creation' }
Invoice class >> customer: aName amount: anAmount [

	^ self new setCustomer: aName amount: anAmount
]

{ #category : 'private' }
Invoice >> setCustomer: aName amount: anAmount [

	customer := aName.
	amount := anAmount
]

{ #category : 'operating' }
Invoice >> statement [

	| result |
	result := 'Customer: ', customer, String cr.
	result := result, 'Amount: ', amount printString.
	^ result
]
