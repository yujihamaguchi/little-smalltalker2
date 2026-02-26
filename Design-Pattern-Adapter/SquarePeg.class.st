Class {
	#name : #SquarePeg,
	#superclass : #Object,
	#instVars : [
		'width'
	],
	#category : #'Design-Pattern-Adapter-Design-Pattern-Adapter'
}

{ #category : #'instance creation' }
SquarePeg class >> width: aNumber [

	^ self new width: aNumber
]

{ #category : #accessing }
SquarePeg >> width [

	^ width
]

{ #category : #accessing }
SquarePeg >> width: aNumber [

	width := aNumber
]
