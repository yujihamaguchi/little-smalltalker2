Class {
	#name : 'CheckingTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Push-Down-Field-Tests',
	#package : 'Refactor-Push-Down-Field-Tests'
}

{ #category : 'tests' }
CheckingTest >> testMonthlyFee [

	| checking result |
	"Arrange"
	checking := Checking withRate: 0.

	"Act"
	result := checking monthlyFee.

	"Assert"
	self assert: result equals: 3
]
