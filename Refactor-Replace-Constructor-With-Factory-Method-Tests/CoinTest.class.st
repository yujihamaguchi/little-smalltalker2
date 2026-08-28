Class {
	#name : 'CoinTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Replace-Constructor-With-Factory-Method-Tests',
	#package : 'Refactor-Replace-Constructor-With-Factory-Method-Tests'
}

{ #category : 'tests' }
CoinTest >> testValue [

	| coin result |
	"Arrange"
	coin := Coin new.

	"Act"
	coin value: 25.
	result := coin value.

	"Assert"
	self assert: result equals: 25
]
