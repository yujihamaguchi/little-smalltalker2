Class {
	#name : #SquarePeg,
	#superclass : #Object,
	#instVars : [
		'width'
	],
	#category : #'Design-Pattern'
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
