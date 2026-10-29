Class {
	#name : 'StationTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Introduce-Parameter-Object-Tests',
	#package : 'Refactor-Introduce-Parameter-Object-Tests'
}

{ #category : 'tests' }
StationTest >> testReadingsOutsideRange [

	| tooLow normal tooHigh station result |
	"Arrange"
	tooLow := Reading value: 0.
	normal := Reading value: 5.
	tooHigh := Reading value: 12.
	station := Station readings: { tooLow. normal. tooHigh }.

	"Act"
	result := station readingsOutsideLow: 1 high: 10.

	"Assert"
	self assert: result equals: { tooLow. tooHigh }
]
