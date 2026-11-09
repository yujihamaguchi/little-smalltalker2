Class {
	#name : 'Person11',
	#superclass : 'Object',
	#instVars : [
		'name',
		'email'
	],
	#category : 'Refactor-Replace-Delegation-With-Inheritance',
	#package : 'Refactor-Replace-Delegation-With-Inheritance'
}

{ #category : 'instance creation' }
Person11 class >> name: aName email: anEmail [

	^ self new setName: aName email: anEmail
]

{ #category : 'accessing' }
Person11 >> email [

	^ email
]

{ #category : 'accessing' }
Person11 >> name [

	^ name
]

{ #category : 'private' }
Person11 >> setName: aName email: anEmail [

	name := aName.
	email := anEmail
]
