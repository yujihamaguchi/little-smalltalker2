Class {
	#name : 'Order4Test',
	#superclass : 'TestCase',
	#category : 'Refactor-Change-Value-To-Reference-Tests',
	#package : 'Refactor-Change-Value-To-Reference-Tests'
}

{ #category : 'tests' }
Order4Test >> testCustomerName [

	| order result |
	"Arrange"
	order := Order4 named: 'Alice'.

	"Act"
	result := order customer name.

	"Assert"
	self assert: result equals: 'Alice'
]
