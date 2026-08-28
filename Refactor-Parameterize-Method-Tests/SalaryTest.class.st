Class {
	#name : 'SalaryTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Parameterize-Method-Tests',
	#package : 'Refactor-Parameterize-Method-Tests'
}

{ #category : 'tests' }
SalaryTest >> testFivePercent [

	| salary result |
	"Arrange"
	salary := Salary amount: 1000.

	"Act"
	result := salary fivePercentRaise.

	"Assert"
	self assert: result equals: 1050
]

{ #category : 'tests' }
SalaryTest >> testTenPercent [

	| salary result |
	"Arrange"
	salary := Salary amount: 1000.

	"Act"
	result := salary tenPercentRaise.

	"Assert"
	self assert: result equals: 1100
]
