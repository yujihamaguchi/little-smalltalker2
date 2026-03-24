Class {
	#name : #PriceTest,
	#superclass : #TestCase,
	#category : #'Design-Pattern-Decorator-Tests'
}

{ #category : #tests }
PriceTest >> testBasePriceValue [

	| basePrice |
	"Arrange"
	basePrice := BasePrice value: 3.

	"Act & Assert"
	self assert: basePrice value equals: 3
]

{ #category : #tests }
PriceTest >> testDiscountedPriceValue [

	| basePrice discountedPrice |
	"Arrange"
	basePrice := BasePrice value: 5.
	discountedPrice := DiscountedPrice price: basePrice discount: 2.

	"Act & Assert"
	self assert: discountedPrice value equals: 3
]

{ #category : #tests }
PriceTest >> testDiscountedThenDoubledPriceValue [

	| basePrice price |
	"Arrange"
	basePrice := BasePrice value: 3.
	price := DoubledPrice price:
		         (DiscountedPrice price: basePrice discount: 2).

	"Act & Assert"
	self assert: price value equals: 2
]

{ #category : #tests }
PriceTest >> testDoubledPriceValue [

	| basePrice doubledPrice |
	"Arrange"
	basePrice := BasePrice value: 3.
	doubledPrice := DoubledPrice price: basePrice.

	"Act & Assert"
	self assert: doubledPrice value equals: 6
]

{ #category : #tests }
PriceTest >> testDoubledThenDiscountedPriceValue [

	| basePrice price |
	"Arrange"
	basePrice := BasePrice value: 3.
	price := DiscountedPrice
		         price: (DoubledPrice price: basePrice)
		         discount: 2.
	"Act & Assert"
	self assert: price value equals: 4
]
