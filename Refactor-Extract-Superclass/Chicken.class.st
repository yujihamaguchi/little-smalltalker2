Class {
	#name : 'Chicken',
	#superclass : 'Object',
	#instVars : [
		'name'
	],
	#category : 'Refactor-Extract-Superclass',
	#package : 'Refactor-Extract-Superclass'
}

{ #category : 'instance creation' }
Chicken class >> name: aName [

	^ self new setName: aName
]

{ #category : 'operating' }
Chicken >> describe [

	^ name, ' the fowl'
]

{ #category : 'private' }
Chicken >> setName: aName [

	name := aName
]
