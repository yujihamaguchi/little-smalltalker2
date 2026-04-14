Class {
	#name : #Memento,
	#superclass : #Object,
	#instVars : [
		'state'
	],
	#category : #'Design-Pattern-Memento'
}

{ #category : #'instance creation' }
Memento class >> originator: anOriginator [

	^ self new state: anOriginator state
]

{ #category : #operations }
Memento >> restoreOriginator: anOriginator [

	anOriginator updateState: state
]

{ #category : #'accessing - private' }
Memento >> state: aSymbol [

	state := aSymbol
]
