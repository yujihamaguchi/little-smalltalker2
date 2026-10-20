Class {
	#name : 'Contract3Test',
	#superclass : 'TestCase',
	#category : 'Refactor-Introduce-Local-Extension-Tests',
	#package : 'Refactor-Introduce-Local-Extension-Tests'
}

{ #category : 'tests' }
Contract3Test >> testRenewalDate [

	| contract result |
	"Arrange"
	contract := Contract3 startingOn: (Date year: 2026 month: 1 day: 15).

	"Act"
	result := contract renewalDate.

	"Assert"
	self assert: result equals: (Date year: 2027 month: 1 day: 31)
]
