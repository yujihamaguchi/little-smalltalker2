Class {
	#name : 'RectTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Rename-Method-Tests',
	#package : 'Refactor-Rename-Method-Tests'
}

{ #category : 'tests' }
RectTest >> testCalc [

	| rectangle result |
	"Arrange"
	rectangle := Rect width: 3 height: 4.

	"Act"
	result := rectangle calc.

	"Assert"
	self assert: result equals: 12
]
