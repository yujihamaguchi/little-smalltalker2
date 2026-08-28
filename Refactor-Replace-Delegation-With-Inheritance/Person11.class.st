Class {
	#name : 'Person11',
	#superclass : 'Object',
	#instVars : [
		'name'
	],
	#category : 'Refactor-Replace-Delegation-With-Inheritance',
	#package : 'Refactor-Replace-Delegation-With-Inheritance'
}

{ #category : 'instance creation' }
Person11 class >> name: aName [

	^ self new setName: aName
]

{ #category : 'accessing' }
Person11 >> name [

	^ name
]

{ #category : 'private' }
Person11 >> setName: aName [

	name := aName
]
