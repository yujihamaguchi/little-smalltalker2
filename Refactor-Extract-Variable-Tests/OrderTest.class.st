Class {
	#name : 'OrderTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Extract-Variable-Tests',
	#package : 'Refactor-Extract-Variable-Tests'
}

{ #category : 'tests' }
OrderTest >> testPriceWithQuantityDiscount [

	| order result |
	"Arrange"
	order := Order quantity: 600 itemPrice: 10.
	"Act"
	result := order price.
	"Assert"
	self assert: result equals: 6050
]

{ #category : 'tests' }
OrderTest >> testPriceWithoutQuantityDiscount [

	| order result |
	"Arrange"
	order := Order quantity: 400 itemPrice: 10.
	"Act"
	result := order price.
	"Assert"
	self assert: result equals: 4100
]
