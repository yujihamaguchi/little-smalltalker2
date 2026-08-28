Class {
	#name : 'DoorTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Replace-Parameter-With-Explicit-Methods-Tests',
	#package : 'Refactor-Replace-Parameter-With-Explicit-Methods-Tests'
}

{ #category : 'tests' }
DoorTest >> testClosed [

	| door result |
	"Arrange"
	door := Door new.

	"Act"
	door setDoor: #closed.
	result := door isOpen.

	"Assert"
	self deny: result
]

{ #category : 'tests' }
DoorTest >> testOpen [

	| door result |
	"Arrange"
	door := Door new.

	"Act"
	door setDoor: #open.
	result := door isOpen.

	"Assert"
	self assert: result
]
