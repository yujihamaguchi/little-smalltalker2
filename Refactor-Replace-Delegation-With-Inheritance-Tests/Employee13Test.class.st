Class {
	#name : 'Employee13Test',
	#superclass : 'TestCase',
	#category : 'Refactor-Replace-Delegation-With-Inheritance-Tests',
	#package : 'Refactor-Replace-Delegation-With-Inheritance-Tests'
}

{ #category : 'tests' }
Employee13Test >> testEmail [

	| employee result |
	"Arrange"
	employee := Employee13 named: 'Alice' email: 'alice@example.com'.

	"Act"
	result := employee email.

	"Assert"
	self assert: result equals: 'alice@example.com'
]

{ #category : 'tests' }
Employee13Test >> testName [

	| employee result |
	"Arrange"
	employee := Employee13 named: 'Alice' email: 'alice@example.com'.

	"Act"
	result := employee name.

	"Assert"
	self assert: result equals: 'Alice'
]
