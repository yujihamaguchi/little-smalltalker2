Class {
	#name : 'PlanTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Decompose-Conditional-Tests',
	#package : 'Refactor-Decompose-Conditional-Tests'
}

{ #category : 'tests' }
PlanTest >> testSummerChargeHasNoServiceCharge [

	| plan result |
	"Arrange"
	plan := Plan summerStart: 6 end: 8 summerRate: 10 winterRate: 20 winterServiceCharge: 5.
	"Act"
	result := plan chargeForDay: 7 quantity: 2.
	"Assert"
	self assert: result equals: 20
]

{ #category : 'tests' }
PlanTest >> testWinterChargeIncludesServiceCharge [

	| plan result |
	"Arrange"
	plan := Plan summerStart: 6 end: 8 summerRate: 10 winterRate: 20 winterServiceCharge: 5.
	"Act"
	result := plan chargeForDay: 3 quantity: 2.
	"Assert"
	self assert: result equals: 45
]
