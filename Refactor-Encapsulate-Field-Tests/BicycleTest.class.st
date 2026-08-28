Class {
	#name : 'BicycleTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Encapsulate-Field-Tests',
	#package : 'Refactor-Encapsulate-Field-Tests'
}

{ #category : 'tests' }
BicycleTest >> testReport [

	| bike result |
	"Arrange"
	bike := Bicycle gear: 3.

	"Act"
	result := bike report.

	"Assert"
	self assert: result equals: 'gear: 3'
]
