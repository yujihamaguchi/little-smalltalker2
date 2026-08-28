Class {
	#name : 'Account11Test',
	#superclass : 'TestCase',
	#category : 'Refactor-Remove-Setting-Method-Tests',
	#package : 'Refactor-Remove-Setting-Method-Tests'
}

{ #category : 'tests' }
Account11Test >> testId [

	| account result |
	"Arrange"
	account := Account11 withId: 42.

	"Act"
	result := account id.

	"Assert"
	self assert: result equals: 42
]
