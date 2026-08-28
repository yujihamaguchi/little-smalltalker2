Class {
	#name : 'DepositAccountTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Move-Field-Tests',
	#package : 'Refactor-Move-Field-Tests'
}

{ #category : 'tests' }
DepositAccountTest >> testInterestForAmount [

	| account result |
	"Arrange"
	account := DepositAccount type: DepositType new rate: 5.

	"Act"
	result := account interestForAmount: 200.

	"Assert"
	self assert: result equals: 10
]
