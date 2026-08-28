Class {
	#name : 'PatientTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Replace-Type-Code-With-Class-Tests',
	#package : 'Refactor-Replace-Type-Code-With-Class-Tests'
}

{ #category : 'tests' }
PatientTest >> testBloodGroup [

	| patient result |
	"Arrange"
	patient := Patient bloodGroup: #O.

	"Act"
	result := patient bloodGroup.

	"Assert"
	self assert: result equals: #O
]
