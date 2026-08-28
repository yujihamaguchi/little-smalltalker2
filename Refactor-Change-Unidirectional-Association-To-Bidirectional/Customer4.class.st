Class {
	#name : 'Customer4',
	#superclass : 'Object',
	#instVars : [
		'name'
	],
	#category : 'Refactor-Change-Unidirectional-Association-To-Bidirectional',
	#package : 'Refactor-Change-Unidirectional-Association-To-Bidirectional'
}

{ #category : 'instance creation' }
Customer4 class >> name: aName [

	^ self new setName: aName
]

{ #category : 'accessing' }
Customer4 >> name [

	^ name
]

{ #category : 'private' }
Customer4 >> setName: aName [

	name := aName
]
