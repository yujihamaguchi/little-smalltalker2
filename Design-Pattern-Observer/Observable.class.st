Class {
	#name : #Observable,
	#superclass : #Object,
	#instVars : [
		'observers'
	],
	#category : #'Design-Pattern-Observer'
}

{ #category : #adding }
Observable >> addObserver: anObserver [

	observers add: anObserver  
]

{ #category : #initialization }
Observable >> initialize [

	observers := OrderedCollection new.
]
