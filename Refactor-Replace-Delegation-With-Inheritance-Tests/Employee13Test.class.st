Class {
	#name : 'Employee13Test',
	#superclass : 'TestCase',
	#category : 'Refactor-Replace-Delegation-With-Inheritance-Tests',
	#package : 'Refactor-Replace-Delegation-With-Inheritance-Tests'
}

{ #category : 'tests' }
Employee13Test >> testName [

	| employee result |
	"Arrange"
	employee := Employee13 named: 'Alice'.

	"Act"
	result := employee name.

	"Assert"
	self assert: result equals: 'Alice'
]
