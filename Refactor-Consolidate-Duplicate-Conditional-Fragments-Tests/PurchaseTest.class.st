Class {
	#name : 'PurchaseTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Consolidate-Duplicate-Conditional-Fragments-Tests',
	#package : 'Refactor-Consolidate-Duplicate-Conditional-Fragments-Tests'
}

{ #category : 'tests' }
PurchaseTest >> testNormalTotal [

	| purchase result |
	"Arrange"
	purchase := Purchase price: 100 special: false.

	"Act"
	result := purchase total.

	"Assert"
	self assert: result equals: 100
]

{ #category : 'tests' }
PurchaseTest >> testSpecialTotal [

	| purchase result |
	"Arrange"
	purchase := Purchase price: 100 special: true.

	"Act"
	result := purchase total.

	"Assert"
	self assert: result equals: 95
]
