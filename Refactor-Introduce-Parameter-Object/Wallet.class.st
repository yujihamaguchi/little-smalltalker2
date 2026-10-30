Class {
	#name : 'Wallet',
	#superclass : 'Object',
	#instVars : [
		'amount',
		'currency'
	],
	#category : 'Refactor-Introduce-Parameter-Object',
	#package : 'Refactor-Introduce-Parameter-Object'
}

{ #category : 'instance creation' }
Wallet class >> amount: anAmount currency: aCurrency [

	^ self new setAmount: anAmount currency: aCurrency
]

{ #category : 'operating' }
Wallet >> canPay: anAmount currency: aCurrency [

	^ currency = aCurrency and: [ amount >= anAmount ]
]

{ #category : 'operating' }
Wallet >> pay: anAmount currency: aCurrency [

	(self canPay: anAmount currency: aCurrency) ifFalse: [ ^ false ].
	amount := amount - anAmount.
	^ true
]

{ #category : 'private' }
Wallet >> setAmount: anAmount currency: aCurrency [

	amount := anAmount.
	currency := aCurrency
]
