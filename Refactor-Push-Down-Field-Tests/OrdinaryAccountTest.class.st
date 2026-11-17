Class {
	#name : 'OrdinaryAccountTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Push-Down-Field-Tests',
	#package : 'Refactor-Push-Down-Field-Tests'
}

{ #category : 'tests' }
OrdinaryAccountTest >> testAnnualInterest [

	| account result |
	"Arrange"
	account := OrdinaryAccount number: '1234567' rate: 0.2.

	"Act"
	result := account annualInterestOn: 1000000.

	"Assert"
	self assert: result equals: 2000
]
