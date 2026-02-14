Class {
	#name : #RoundPeg,
	#superclass : #Object,
	#traits : 'TRadius',
	#classTraits : 'TRadius classTrait',
	#instVars : [
		'radius'
	],
	#category : #'Design-Pattern'
}

{ #category : #'instance creation' }
RoundPeg class >> radius: aNumber [

	^ self new radius: aNumber
]

{ #category : #accessing }
RoundPeg >> radius [

	^ radius
]

{ #category : #accessing }
RoundPeg >> radius: aNumber [

	radius := aNumber
]
