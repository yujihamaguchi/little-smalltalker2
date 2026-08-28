Class {
	#name : 'LeagueTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Replace-Array-With-Object-Tests',
	#package : 'Refactor-Replace-Array-With-Object-Tests'
}

{ #category : 'tests' }
LeagueTest >> testNameOf [

	| league result |
	"Arrange"
	league := League new.

	"Act"
	result := league nameOf: (Array with: 'Liverpool' with: 15).

	"Assert"
	self assert: result equals: 'Liverpool'
]

{ #category : 'tests' }
LeagueTest >> testWinsOf [

	| league result |
	"Arrange"
	league := League new.

	"Act"
	result := league winsOf: (Array with: 'Liverpool' with: 15).

	"Assert"
	self assert: result equals: 15
]
