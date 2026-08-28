Class {
	#name : 'AutomobileTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Collapse-Hierarchy-Tests',
	#package : 'Refactor-Collapse-Hierarchy-Tests'
}

{ #category : 'tests' }
AutomobileTest >> testWheels [

	| auto result |
	"Arrange"
	auto := Automobile wheels: 4.

	"Act"
	result := auto wheels.

	"Assert"
	self assert: result equals: 4
]
