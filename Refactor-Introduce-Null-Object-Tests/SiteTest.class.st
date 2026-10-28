Class {
	#name : 'SiteTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Introduce-Null-Object-Tests',
	#package : 'Refactor-Introduce-Null-Object-Tests'
}

{ #category : 'tests' }
SiteTest >> testCustomerNameOfKnownCustomer [

	| site result |
	"Arrange"
	site := Site customer: (Customer2 name: 'Alice' plan: 'premium' weeksDelinquent: 2).

	"Act"
	result := site customerName.

	"Assert"
	self assert: result equals: 'Alice'
]

{ #category : 'tests' }
SiteTest >> testCustomerNameOfMissingCustomer [

	| site result |
	"Arrange"
	site := Site customer: nil.

	"Act"
	result := site customerName.

	"Assert"
	self assert: result equals: 'occupant'
]

{ #category : 'tests' }
SiteTest >> testCustomerPlanOfKnownCustomer [

	| site result |
	"Arrange"
	site := Site customer: (Customer2 name: 'Alice' plan: 'premium' weeksDelinquent: 2).

	"Act"
	result := site customerPlan.

	"Assert"
	self assert: result equals: 'premium'
]

{ #category : 'tests' }
SiteTest >> testCustomerPlanOfMissingCustomer [

	| site result |
	"Arrange"
	site := Site customer: nil.

	"Act"
	result := site customerPlan.

	"Assert"
	self assert: result equals: 'basic'
]

{ #category : 'tests' }
SiteTest >> testWeeksDelinquentOfKnownCustomer [

	| site result |
	"Arrange"
	site := Site customer: (Customer2 name: 'Alice' plan: 'premium' weeksDelinquent: 2).

	"Act"
	result := site weeksDelinquent.

	"Assert"
	self assert: result equals: 2
]

{ #category : 'tests' }
SiteTest >> testWeeksDelinquentOfMissingCustomer [

	| site result |
	"Arrange"
	site := Site customer: nil.

	"Act"
	result := site weeksDelinquent.

	"Assert"
	self assert: result equals: 0
]
