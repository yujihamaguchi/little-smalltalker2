Class {
	#name : 'ATM10',
	#superclass : 'Object',
	#instVars : [
		'account'
	],
	#category : 'Refactor-Introduce-Assertion',
	#package : 'Refactor-Introduce-Assertion'
}

{ #category : 'instance creation' }
ATM10 class >> account: anAccount [

	^ self new setAccount: anAccount
]

{ #category : 'operating' }
ATM10 >> dispense: amount [

	amount > account balance ifTrue: [ ^ 0 ].
	account withdraw: amount.
	^ amount
]

{ #category : 'private' }
ATM10 >> setAccount: anAccount [

	account := anAccount
]
