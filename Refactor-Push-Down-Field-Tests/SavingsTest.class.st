Class {
	#name : 'SavingsTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Push-Down-Field-Tests',
	#package : 'Refactor-Push-Down-Field-Tests'
}

{ #category : 'tests' }
SavingsTest >> testAnnualInterest [

	| savings result |
	"Arrange"
	savings := Savings withRate: 5.

	"Act"
	result := savings annualInterestOn: 1000.

	"Assert"
	self assert: result equals: 50
]
