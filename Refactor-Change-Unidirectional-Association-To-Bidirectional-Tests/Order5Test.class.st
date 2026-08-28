Class {
	#name : 'Order5Test',
	#superclass : 'TestCase',
	#category : 'Refactor-Change-Unidirectional-Association-To-Bidirectional-Tests',
	#package : 'Refactor-Change-Unidirectional-Association-To-Bidirectional-Tests'
}

{ #category : 'tests' }
Order5Test >> testCustomer [

	| order result |
	"Arrange"
	order := Order5 customer: (Customer4 name: 'Alice').

	"Act"
	result := order customer name.

	"Assert"
	self assert: result equals: 'Alice'
]
