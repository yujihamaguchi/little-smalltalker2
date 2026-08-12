Class {
	#name : 'BirdTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Replace-Conditional-With-Polymorphism-Tests',
	#package : 'Refactor-Replace-Conditional-With-Polymorphism-Tests'
}

{ #category : 'tests' }
BirdTest >> testAfricanSpeedReducedByCoconuts [

	| bird result |
	"Arrange"
	bird := Bird african: 20 coconuts: 3.
	"Act"
	result := bird speed.
	"Assert"
	self assert: result equals: 14
]

{ #category : 'tests' }
BirdTest >> testEuropeanSpeed [

	| bird result |
	"Arrange"
	bird := Bird european: 20.
	"Act"
	result := bird speed.
	"Assert"
	self assert: result equals: 20
]

{ #category : 'tests' }
BirdTest >> testNorwegianBlueSpeedWhenFree [

	| bird result |
	"Arrange"
	bird := Bird norwegianBlue: 20 voltage: 4 nailed: false.
	"Act"
	result := bird speed.
	"Assert"
	self assert: result equals: 24
]

{ #category : 'tests' }
BirdTest >> testNorwegianBlueSpeedWhenNailed [

	| bird result |
	"Arrange"
	bird := Bird norwegianBlue: 20 voltage: 4 nailed: true.
	"Act"
	result := bird speed.
	"Assert"
	self assert: result equals: 0
]
