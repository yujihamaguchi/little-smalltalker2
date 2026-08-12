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

	^ self new dead: aDead; separated: aSeparated; retired: aRetired; yourself
]

{ #category : 'accessing' }
Employee >> dead: aBoolean [

	dead := aBoolean
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

{ #category : 'accessing' }
Employee >> retired: aBoolean [

	retired := aBoolean
]

{ #category : 'operating' }
Employee >> retiredAmount [

	^ 3
]

{ #category : 'accessing' }
Employee >> separated: aBoolean [

	separated := aBoolean
]

{ #category : 'operating' }
Employee >> separatedAmount [

	^ 2
]
