Class {
	#name : 'PetTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Push-Down-Method-Tests',
	#package : 'Refactor-Push-Down-Method-Tests'
}

{ #category : 'tests' }
PetTest >> testHoundBarks [

	| hound result |
	"Arrange"
	hound := Hound named: 'Pochi'.

	"Act"
	result := hound bark.

	"Assert"
	self assert: result equals: 'woof'
]

{ #category : 'tests' }
PetTest >> testHoundName [

	| hound result |
	"Arrange"
	hound := Hound named: 'Pochi'.

	"Act"
	result := hound name.

	"Assert"
	self assert: result equals: 'Pochi'
]

{ #category : 'tests' }
PetTest >> testSongbirdName [

	| bird result |
	"Arrange"
	bird := Songbird named: 'Piyo'.

	"Act"
	result := bird name.

	"Assert"
	self assert: result equals: 'Piyo'
]

{ #category : 'tests' }
PetTest >> testSongbirdSings [

	| bird result |
	"Arrange"
	bird := Songbird named: 'Piyo'.

	"Act"
	result := bird sing.

	"Assert"
	self assert: result equals: 'tweet'
]
