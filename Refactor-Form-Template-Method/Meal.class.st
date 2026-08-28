Class {
	#name : 'Meal',
	#superclass : 'Object',
	#instVars : [
		'name'
	],
	#category : 'Refactor-Form-Template-Method',
	#package : 'Refactor-Form-Template-Method'
}

{ #category : 'instance creation' }
Meal class >> name: aName [

	^ self new setName: aName
]

{ #category : 'private' }
Meal >> setName: aName [

	name := aName
]
