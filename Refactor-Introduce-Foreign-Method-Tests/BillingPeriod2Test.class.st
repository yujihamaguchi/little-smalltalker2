Class {
	#name : 'BillingPeriod2Test',
	#superclass : 'TestCase',
	#category : 'Refactor-Introduce-Foreign-Method-Tests',
	#package : 'Refactor-Introduce-Foreign-Method-Tests'
}

{ #category : 'tests' }
BillingPeriod2Test >> testClosingDateIn31DayMonth [

	| period result |
	"Arrange"
	period := BillingPeriod2 startingOn: (Date year: 2026 month: 1 day: 15).

	"Act"
	result := period closingDate.

	"Assert"
	self assert: result equals: (Date year: 2026 month: 1 day: 31)
]

{ #category : 'tests' }
BillingPeriod2Test >> testClosingDateInFebruary [

	| period result |
	"Arrange"
	period := BillingPeriod2 startingOn: (Date year: 2026 month: 2 day: 10).

	"Act"
	result := period closingDate.

	"Assert"
	self assert: result equals: (Date year: 2026 month: 2 day: 28)
]
