Class {
	#name : 'Stack2Test',
	#superclass : 'TestCase',
	#category : 'Refactor-Replace-Inheritance-With-Delegation-Tests',
	#package : 'Refactor-Replace-Inheritance-With-Delegation-Tests'
}

{ #category : 'tests' }
Stack2Test >> testTop [

	| stack result |
	"Arrange"
	stack := Stack2 new.

	"Act"
	stack push: 1.
	stack push: 2.
	result := stack top.

	"Assert"
	self assert: result equals: 2
]
