Class {
	#name : #RoundHole,
	#superclass : #Object,
	#instVars : [
		'radius'
	],
	#category : #'DesignPatterns-Adapter'
}

{ #category : #'instance creation' }
RoundHole class >> radius: arg1 [

	^ self new radius: arg1
]

{ #category : #testing }
RoundHole >> fits: arg1 [

	^ radius >= arg1 radius
]

{ #category : #accessing }
RoundHole >> radius [

	^ radius
]

{ #category : #accessing }
RoundHole >> radius: arg1 [

	radius := arg1
]
