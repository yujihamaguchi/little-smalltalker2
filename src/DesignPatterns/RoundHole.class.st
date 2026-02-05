Class {
	#name : #RoundHole,
	#superclass : #Object,
	#instVars : [
		'radius'
	],
	#category : #'DesignPatterns-Adapter'
}

{ #category : #'instance creation' }
RoundHole class >> radius: number [

	^ self new radius: number
]

{ #category : #testing }
RoundHole >> fits: aPeg [

	^ radius >= aPeg radius
]

{ #category : #accessing }
RoundHole >> radius [

  ^ radius
]

{ #category : #accessing }
RoundHole >> radius: aNumber [

	radius := aNumber
]
