Class {
	#name : 'PricedOrderTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Replace-Temp-With-Query-Tests',
	#package : 'Refactor-Replace-Temp-With-Query-Tests'
}

{ #category : 'tests' }
PricedOrderTest >> testPriceWithDiscount [

	| order result |
	"Arrange"
	order := PricedOrder quantity: 20 itemPrice: 100.

	"Act"
	result := order getPrice.

	"Assert"
	self assert: result equals: 1900
]

{ #category : 'tests' }
PricedOrderTest >> testPriceWithoutDiscount [

	| order result |
	"Arrange"
	order := PricedOrder quantity: 5 itemPrice: 100.

	"Act"
	result := order getPrice.

	"Assert"
	self assert: result equals: 490
]
