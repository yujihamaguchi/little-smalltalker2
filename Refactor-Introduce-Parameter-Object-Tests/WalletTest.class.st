Class {
	#name : 'WalletTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Introduce-Parameter-Object-Tests',
	#package : 'Refactor-Introduce-Parameter-Object-Tests'
}

{ #category : 'tests' }
WalletTest >> testPay [

	| wallet result |
	"Arrange"
	wallet := Wallet amount: 100 currency: #JPY.

	"Act"
	result := wallet pay: 30 currency: #JPY.

	"Assert"
	self assert: result.
	self assert: (wallet canPay: 70 currency: #JPY).
	self deny: (wallet canPay: 71 currency: #JPY)
]

{ #category : 'tests' }
WalletTest >> testPayInDifferentCurrency [

	| wallet result |
	"Arrange"
	wallet := Wallet amount: 100 currency: #JPY.

	"Act"
	result := wallet pay: 30 currency: #USD.

	"Assert"
	self deny: result.
	self assert: (wallet canPay: 100 currency: #JPY)
]

{ #category : 'tests' }
WalletTest >> testPayMoreThanBalance [

	| wallet result |
	"Arrange"
	wallet := Wallet amount: 100 currency: #JPY.

	"Act"
	result := wallet pay: 101 currency: #JPY.

	"Assert"
	self deny: result.
	self assert: (wallet canPay: 100 currency: #JPY)
]
