Class {
	#name : 'ShopperTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Remove-Control-Flag-Tests',
	#package : 'Refactor-Remove-Control-Flag-Tests'
}

{ #category : 'tests' }
ShopperTest >> testBuyAllWithinBudget [

	| shopper result |
	"Arrange"
	shopper := Shopper budget: 1000.

	"Act"
	result := shopper buyFrom: { 'milk' -> 200. 'bread' -> 300. 'eggs' -> 250 }.

	"Assert"
	self assert: result asArray equals: #( 'milk' 'bread' 'eggs' )
]

{ #category : 'tests' }
ShopperTest >> testStopAtFirstItemOverBudget [

	| shopper result |
	"Arrange"
	shopper := Shopper budget: 500.

	"Act"
	result := shopper buyFrom: { 'milk' -> 200. 'cheese' -> 400. 'bread' -> 150 }.

	"Assert"
	self assert: result asArray equals: #( 'milk' )
]
