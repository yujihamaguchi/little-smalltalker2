Class {
	#name : 'SiteTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Introduce-Null-Object-Tests',
	#package : 'Refactor-Introduce-Null-Object-Tests'
}

{ #category : 'tests' }
SiteTest >> testKnownCustomer [

	| site result |
	"Arrange"
	site := Site customer: (Customer2 name: 'Alice').

	"Act"
	result := site customerName.

	"Assert"
	self assert: result equals: 'Alice'
]

{ #category : 'tests' }
SiteTest >> testMissingCustomer [

	| site result |
	"Arrange"
	site := Site customer: nil.

	"Act"
	result := site customerName.

	"Assert"
	self assert: result equals: 'occupant'
]
