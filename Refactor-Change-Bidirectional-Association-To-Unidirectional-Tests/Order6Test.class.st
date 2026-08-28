Class {
	#name : 'Order6Test',
	#superclass : 'TestCase',
	#category : 'Refactor-Change-Bidirectional-Association-To-Unidirectional-Tests',
	#package : 'Refactor-Change-Bidirectional-Association-To-Unidirectional-Tests'
}

{ #category : 'tests' }
Order6Test >> testForwardLink [

	| customer order result |
	"Arrange"
	customer := Customer5 name: 'Alice'.
	order := Order6 customer: customer.

	"Act"
	result := order customer name.

	"Assert"
	self assert: result equals: 'Alice'
]
