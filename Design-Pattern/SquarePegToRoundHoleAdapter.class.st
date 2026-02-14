Class {
	#name : #SquarePegToRoundHoleAdapter,
	#superclass : #Object,
	#traits : 'TRadius',
	#classTraits : 'TRadius classTrait',
	#instVars : [
		'squarePeg'
	],
	#category : #'Design-Pattern'
}

{ #category : #'instance creation' }
SquarePegToRoundHoleAdapter class >> squarePeg: aSquarePeg [

	^ self new squarePeg: aSquarePeg 
]

{ #category : #accessing }
SquarePegToRoundHoleAdapter >> radius [

	^ squarePeg width / 2 sqrt
]

{ #category : #accessing }
SquarePegToRoundHoleAdapter >> squarePeg: aSquarePeg [

	squarePeg := aSquarePeg 
]
