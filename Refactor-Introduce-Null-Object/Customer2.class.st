Class {
	#name : 'Customer2',
	#superclass : 'Object',
	#instVars : [
		'name'
	],
	#category : 'Refactor-Introduce-Null-Object',
	#package : 'Refactor-Introduce-Null-Object'
}

{ #category : 'instance creation' }
Customer2 class >> name: aName [

	^ self new setName: aName
]

{ #category : 'accessing' }
Customer2 >> name [

	^ name
]

{ #category : 'private' }
Customer2 >> setName: aName [

	name := aName
]
