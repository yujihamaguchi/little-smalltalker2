Class {
	#name : 'AccountTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Move-Method-Tests',
	#package : 'Refactor-Move-Method-Tests'
}

{ #category : 'tests' }
AccountTest >> testPremiumOverdraftBeyondSevenDays [

	| account result |
	"Arrange"
	account := Account type: (AccountType premium: true) daysOverdrawn: 10.

	"Act"
	result := account overdraftCharge.

	"Assert"
	self assert: result equals: 16
]

{ #category : 'tests' }
AccountTest >> testStandardOverdraft [

	| account result |
	"Arrange"
	account := Account type: (AccountType premium: false) daysOverdrawn: 10.

	"Act"
	result := account overdraftCharge.

	"Assert"
	self assert: result equals: 20
]
