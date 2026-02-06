Class {
	#name : #SquarePegToRoundHoleAdapter,
	#superclass : #Object,
	#instVars : [
		'squarePeg'
	],
	#category : #'DesignPatterns-Adapter'
}

{ #category : #'instance creation' }
SquarePegToRoundHoleAdapter class >> squarePeg: arg1 [

	^ self new squarePeg: arg1
]

{ #category : #accessing }
SquarePegToRoundHoleAdapter >> radius [

	^ squarePeg width / 2 sqrt
]

{ #category : #accessing }
SquarePegToRoundHoleAdapter >> squarePeg: arg1 [

	squarePeg := arg1
]
