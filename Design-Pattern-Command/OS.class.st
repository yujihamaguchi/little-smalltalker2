Class {
	#name : #OS,
	#superclass : #Object,
	#instVars : [
		'clipboard'
	],
	#category : #'Design-Pattern-Command'
}

{ #category : #accessing }
OS >> clipboard [

	^ clipboard
]

{ #category : #accessing }
OS >> clipboard: anObject [

	clipboard := anObject
]

{ #category : #initialization }
OS >> initialize [

	super initialize.
	clipboard := ''
]
