Class {
	#name : 'RoundHole',
	#superclass : 'Object',
	#traits : 'TRadius',
	#classTraits : 'TRadius classTrait',
	#instVars : [
		'radius'
	],
	#category : 'Design-Pattern-Adapter',
	#package : 'Design-Pattern-Adapter'
}

{ #category : 'instance creation' }
RoundHole class >> radius: aNumber [

	^ self new radius: aNumber; yourself 
]

{ #category : 'operating' }
RoundHole >> fits: another [

	^ self radius >= another radius
]

{ #category : 'accessing' }
RoundHole >> radius [

	^ radius
]

{ #category : 'accessing' }
RoundHole >> radius: aNumber [

	radius := aNumber
]
