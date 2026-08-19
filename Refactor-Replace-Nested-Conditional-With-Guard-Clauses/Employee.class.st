Class {
	#name : 'Employee',
	#superclass : 'Object',
	#instVars : [
		'dead',
		'separated',
		'retired'
	],
	#category : 'Refactor-Replace-Nested-Conditional-With-Guard-Clauses',
	#package : 'Refactor-Replace-Nested-Conditional-With-Guard-Clauses'
}

{ #category : 'instance creation' }
Employee class >> dead: aDead separated: aSeparated retired: aRetired [

	^ self new setDead: aDead separated: aSeparated retired: aRetired
]

{ #category : 'operating' }
Employee >> deadAmount [

	^ 1
]

{ #category : 'operating' }
Employee >> normalPayAmount [

	^ 4
]

{ #category : 'operating' }
Employee >> payAmount [

	| result |
	dead
		ifTrue: [ result := self deadAmount ]
		ifFalse: [ separated
			ifTrue: [ result := self separatedAmount ]
			ifFalse: [ retired
				ifTrue: [ result := self retiredAmount ]
				ifFalse: [ result := self normalPayAmount ] ] ].
	^ result
]

{ #category : 'operating' }
Employee >> retiredAmount [

	^ 3
]

{ #category : 'operating' }
Employee >> separatedAmount [

	^ 2
]

{ #category : 'private' }
Employee >> setDead: aDead separated: aSeparated retired: aRetired [

	dead := aDead.
	separated := aSeparated.
	retired := aRetired
]
