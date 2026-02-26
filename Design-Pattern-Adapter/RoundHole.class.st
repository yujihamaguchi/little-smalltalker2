Class {
	#name : #RoundHole,
	#superclass : #Object,
	#traits : 'TRadius',
	#classTraits : 'TRadius classTrait',
	#instVars : [
		'radius'
	],
	#category : #'Design-Pattern-Adapter-Design-Pattern-Adapter'
}

{ #category : #'instance creation' }
RoundHole class >> radius: aNumber [

	^ self new radius: aNumber
]

{ #category : #testing }
RoundHole >> fits: anObject [

	^ self radius >= anObject radius
]

{ #category : #accessing }
RoundHole >> radius [

	^ radius
]

{ #category : #accessing }
RoundHole >> radius: aNumber [

	radius := aNumber
]
