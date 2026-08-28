Class {
	#name : 'ReadingTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Introduce-Parameter-Object-Tests',
	#package : 'Refactor-Introduce-Parameter-Object-Tests'
}

{ #category : 'tests' }
ReadingTest >> testInRange [

	| reading result |
	"Arrange"
	reading := Reading value: 5.

	"Act"
	result := reading isInRangeLow: 1 high: 10.

	"Assert"
	self assert: result
]
