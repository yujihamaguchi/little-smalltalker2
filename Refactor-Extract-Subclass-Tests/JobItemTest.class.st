Class {
	#name : 'JobItemTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Extract-Subclass-Tests',
	#package : 'Refactor-Extract-Subclass-Tests'
}

{ #category : 'tests' }
JobItemTest >> testLaborPrice [

	| item result |
	"Arrange"
	item := JobItem unitPrice: 0 quantity: 3 labor: true.

	"Act"
	result := item totalPrice.

	"Assert"
	self assert: result equals: 300
]

{ #category : 'tests' }
JobItemTest >> testPartPrice [

	| item result |
	"Arrange"
	item := JobItem unitPrice: 10 quantity: 5 labor: false.

	"Act"
	result := item totalPrice.

	"Assert"
	self assert: result equals: 50
]
