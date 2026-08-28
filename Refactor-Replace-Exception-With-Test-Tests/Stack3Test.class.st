Class {
	#name : 'Stack3Test',
	#superclass : 'TestCase',
	#category : 'Refactor-Replace-Exception-With-Test-Tests',
	#package : 'Refactor-Replace-Exception-With-Test-Tests'
}

{ #category : 'tests' }
Stack3Test >> testTopWhenEmpty [

	| stack result |
	"Arrange"
	stack := Stack3 new.

	"Act"
	result := stack topOr: 0.

	"Assert"
	self assert: result equals: 0
]

{ #category : 'tests' }
Stack3Test >> testTopWhenPresent [

	| stack result |
	"Arrange"
	stack := Stack3 new.
	stack push: 5.

	"Act"
	result := stack topOr: 0.

	"Assert"
	self assert: result equals: 5
]
