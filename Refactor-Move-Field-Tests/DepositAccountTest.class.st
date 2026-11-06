Class {
	#name : 'DepositAccountTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Move-Field-Tests',
	#package : 'Refactor-Move-Field-Tests'
}

{ #category : 'tests' }
DepositAccountTest >> testInterestForOrdinaryDeposit [

	| account result |
	"Arrange"
	account := DepositAccount product: (DepositProduct type: #ordinary) rate: 5.

	"Act"
	result := account interestForAmount: 200.

	"Assert"
	self assert: result equals: 10
]

{ #category : 'tests' }
DepositAccountTest >> testInterestForTimeDeposit [

	| account result |
	"Arrange"
	account := DepositAccount product: (DepositProduct type: #time) rate: 10.

	"Act"
	result := account interestForAmount: 200.

	"Assert"
	self assert: result equals: 20
]
