Class {
	#name : 'BillingPeriod3Test',
	#superclass : 'TestCase',
	#category : 'Refactor-Introduce-Local-Extension-Tests',
	#package : 'Refactor-Introduce-Local-Extension-Tests'
}

{ #category : 'tests' }
BillingPeriod3Test >> testClosingDate [

	| period result |
	"Arrange"
	period := BillingPeriod3 startingOn: (Date year: 2026 month: 1 day: 15).

	"Act"
	result := period closingDate.

	"Assert"
	self assert: result equals: (Date year: 2026 month: 1 day: 31)
]

{ #category : 'tests' }
BillingPeriod3Test >> testPaymentDateMovesPastWeekend [

	| period result |
	"Arrange"
	period := BillingPeriod3 startingOn: (Date year: 2026 month: 1 day: 15).
	self assert: (Date year: 2026 month: 2 day: 28) dayOfWeekName equals: #Saturday.

	"Act"
	result := period paymentDate.

	"Assert"
	self assert: result equals: (Date year: 2026 month: 3 day: 2)
]

{ #category : 'tests' }
BillingPeriod3Test >> testPaymentDateOnWeekday [

	| period result |
	"Arrange"
	period := BillingPeriod3 startingOn: (Date year: 2026 month: 2 day: 10).
	self assert: (Date year: 2026 month: 3 day: 31) dayOfWeekName equals: #Tuesday.

	"Act"
	result := period paymentDate.

	"Assert"
	self assert: result equals: (Date year: 2026 month: 3 day: 31)
]
