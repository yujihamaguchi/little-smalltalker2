Class {
	#name : 'PriceListTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Introduce-Local-Extension-Tests',
	#package : 'Refactor-Introduce-Local-Extension-Tests'
}

{ #category : 'tests' }
PriceListTest >> testCents [

	| list result |
	"Arrange"
	list := PriceList new.

	"Act"
	result := list centsOf: 350.

	"Assert"
	self assert: result equals: 50
]

{ #category : 'tests' }
PriceListTest >> testDollars [

	| list result |
	"Arrange"
	list := PriceList new.

	"Act"
	result := list dollarsOf: 350.

	"Assert"
	self assert: result equals: 3
]
