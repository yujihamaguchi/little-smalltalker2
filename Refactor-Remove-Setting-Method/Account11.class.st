Class {
	#name : 'Account11',
	#superclass : 'Object',
	#instVars : [
		'id'
	],
	#category : 'Refactor-Remove-Setting-Method',
	#package : 'Refactor-Remove-Setting-Method'
}

{ #category : 'instance creation' }
Account11 class >> withId: anId [

	^ self new id: anId
]

{ #category : 'accessing' }
Account11 >> id [

	^ id
]

{ #category : 'accessing' }
Account11 >> id: anId [

	id := anId
]
