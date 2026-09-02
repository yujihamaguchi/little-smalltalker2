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
	purchase := Purchase price: 200 special: false.

	"Act"
	result := purchase total.

	"Assert"
	self assert: result equals: 220
]

{ #category : 'tests' }
PurchaseTest >> testSpecialTotal [

	| purchase result |
	"Arrange"
	purchase := Purchase price: 200 special: true.

	"Act"
	result := purchase total.

	"Assert"
	self assert: result equals: 210
]
