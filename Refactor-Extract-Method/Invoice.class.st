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

	^ self new customer: aName; amount: anAmount; yourself
]

{ #category : 'accessing' }
Invoice >> amount: anAmount [

	amount := anAmount
]

{ #category : 'accessing' }
Invoice >> customer: aName [

	customer := aName
]

{ #category : 'operating' }
Invoice >> statement [

	| result |
	result := 'Customer: ', customer, String cr.
	result := result, 'Amount: ', amount printString.
	^ result
]
