Class {
	#name : #SquarePegToRoundHoleAdapter,
	#superclass : #Object,
	#instVars : [
		'squarePeg'
	],
	#category : #'DesignPatterns-Adapter'
}

{ #category : #accessing }
SquarePegToRoundHoleAdapter >> radius [

  ^ squarePeg width / 2 sqrt
]

{ #category : #accessing }
SquarePegToRoundHoleAdapter >> squarePeg: aSquarePeg [

  squarePeg := aSquarePeg 
]
