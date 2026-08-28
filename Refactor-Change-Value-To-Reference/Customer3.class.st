Class {
	#name : 'Customer3',
	#superclass : 'Object',
	#instVars : [
		'name'
	],
	#category : 'Refactor-Change-Value-To-Reference',
	#package : 'Refactor-Change-Value-To-Reference'
}

{ #category : 'instance creation' }
Customer3 class >> named: aName [

	^ self new setName: aName
]

{ #category : 'accessing' }
Customer3 >> name [

	^ name
]

{ #category : 'private' }
Customer3 >> setName: aName [

	name := aName
]
