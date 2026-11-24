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
	result := shopper buyFrom: { '牛乳' -> 200. 'パン' -> 300. '卵' -> 250 }.

	"Assert"
	self assert: result asArray equals: #( '牛乳' 'パン' '卵' )
]

{ #category : 'tests' }
ShopperTest >> testStopAtFirstItemOverBudget [

	| shopper result |
	"Arrange"
	shopper := Shopper budget: 500.

	"Act"
	result := shopper buyFrom: { '牛乳' -> 200. 'チーズ' -> 400. 'パン' -> 150 }.

	"Assert"
	self assert: result asArray equals: #( '牛乳' )
]
