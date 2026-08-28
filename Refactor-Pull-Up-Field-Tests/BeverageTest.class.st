Class {
	#name : 'BeverageTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Pull-Up-Field-Tests',
	#package : 'Refactor-Pull-Up-Field-Tests'
}

{ #category : 'tests' }
BeverageTest >> testCoffeeCaffeine [

	| coffee result |
	"Arrange"
	coffee := Coffee caffeine: 95.

	"Act"
	result := coffee caffeine.

	"Assert"
	self assert: result equals: 95
]

{ #category : 'tests' }
BeverageTest >> testTeaCaffeine [

	| tea result |
	"Arrange"
	tea := Tea caffeine: 40.

	"Act"
	result := tea caffeine.

	"Assert"
	self assert: result equals: 40
]
