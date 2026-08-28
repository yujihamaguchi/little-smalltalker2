Class {
	#name : 'GenderTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Replace-Subclass-With-Fields-Tests',
	#package : 'Refactor-Replace-Subclass-With-Fields-Tests'
}

{ #category : 'tests' }
GenderTest >> testFemaleCode [

	| result |
	"Arrange"
	"(none)"

	"Act"
	result := Female new code.

	"Assert"
	self assert: result equals: 'F'
]

{ #category : 'tests' }
GenderTest >> testMaleCode [

	| result |
	"Arrange"
	"(none)"

	"Act"
	result := Male new code.

	"Assert"
	self assert: result equals: 'M'
]

{ #category : 'tests' }
GenderTest >> testMaleIsMale [

	| result |
	"Arrange"
	"(none)"

	"Act"
	result := Male new isMale.

	"Assert"
	self assert: result
]
