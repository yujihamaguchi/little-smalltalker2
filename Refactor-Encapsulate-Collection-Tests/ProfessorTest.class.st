Class {
	#name : 'ProfessorTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Encapsulate-Collection-Tests',
	#package : 'Refactor-Encapsulate-Collection-Tests'
}

{ #category : 'tests' }
ProfessorTest >> testCoursesCount [

	| professor result |
	"Arrange"
	professor := Professor new.

	"Act"
	professor courses add: 'Math'.
	professor courses add: 'CS'.
	result := professor courses size.

	"Assert"
	self assert: result equals: 2
]
