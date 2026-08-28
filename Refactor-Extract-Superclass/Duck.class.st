Class {
	#name : 'Duck',
	#superclass : 'Object',
	#instVars : [
		'name'
	],
	#category : 'Refactor-Extract-Superclass',
	#package : 'Refactor-Extract-Superclass'
}

{ #category : 'instance creation' }
Duck class >> name: aName [

	^ self new setName: aName
]

{ #category : 'operating' }
Duck >> describe [

	^ name, ' the fowl'
]

{ #category : 'private' }
Duck >> setName: aName [

	name := aName
]
