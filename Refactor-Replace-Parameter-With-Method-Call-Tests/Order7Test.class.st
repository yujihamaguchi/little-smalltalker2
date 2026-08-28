Class {
	#name : 'Order7Test',
	#superclass : 'TestCase',
	#category : 'Refactor-Replace-Parameter-With-Method-Call-Tests',
	#package : 'Refactor-Replace-Parameter-With-Method-Call-Tests'
}

{ #category : 'tests' }
Order7Test >> testFinalPrice [

	| order result |
	"Arrange"
	order := Order7 quantity: 5 itemPrice: 100.

	"Act"
	result := order finalPrice.

	"Assert"
	self assert: result equals: 490
]
