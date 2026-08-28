Class {
	#name : 'PetTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Push-Down-Method-Tests',
	#package : 'Refactor-Push-Down-Method-Tests'
}

{ #category : 'tests' }
PetTest >> testSongbirdSings [

	| bird result |
	"Arrange"
	bird := Songbird new.

	"Act"
	result := bird sing.

	"Assert"
	self assert: result equals: 'tweet'
]
