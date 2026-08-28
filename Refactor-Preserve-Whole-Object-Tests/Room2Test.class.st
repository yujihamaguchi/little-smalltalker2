Class {
	#name : 'Room2Test',
	#superclass : 'TestCase',
	#category : 'Refactor-Preserve-Whole-Object-Tests',
	#package : 'Refactor-Preserve-Whole-Object-Tests'
}

{ #category : 'tests' }
Room2Test >> testWithinRange [

	| room plan result |
	"Arrange"
	room := Room2 temperature: 20.
	plan := HeatingPlan low: 10 high: 30.

	"Act"
	result := room withinRangeLow: plan low high: plan high.

	"Assert"
	self assert: result
]
