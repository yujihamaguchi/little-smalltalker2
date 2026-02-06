Class {
	#name : #RoundPeg,
	#superclass : #Object,
	#traits : 'TRadius',
	#classTraits : 'TRadius classTrait',
	#instVars : [
		'radius'
	],
	#category : #'DesignPatterns-Adapter'
}

{ #category : #'instance creation' }
RoundPeg class >> radius: arg1 [

	^ self new radius: arg1
]

{ #category : #accessing }
RoundPeg >> radius [

	^ radius
]

{ #category : #accessing }
RoundPeg >> radius: arg1 [

	radius := arg1
]
