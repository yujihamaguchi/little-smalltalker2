Class {
	#name : #SquarePeg,
	#superclass : #Object,
	#instVars : [
		'width'
	],
	#category : #'DesignPatterns-Adapter'
}

{ #category : #'instance creation' }
SquarePeg class >> width: arg1 [

	^ self new width: arg1
]

{ #category : #accessing }
SquarePeg >> width [

	^ width
]

{ #category : #accessing }
SquarePeg >> width: arg1 [

	width := arg1
]
