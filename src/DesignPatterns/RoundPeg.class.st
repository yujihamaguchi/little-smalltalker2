Class {
	#name : #RoundPeg,
	#superclass : #Object,
	#instVars : [
		'radius'
	],
	#category : #'DesignPatterns-Adapter'
}

{ #category : #initialization }
RoundPeg class >> radius: aNumber [

	^ self new setRadius: aNumber
]

{ #category : #accessing }
RoundPeg >> radius [

	^ radius
]

{ #category : #initialization }
RoundPeg >> setRadius: aNumber [

	radius := aNumber
]
