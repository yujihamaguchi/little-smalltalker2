Class {
	#name : #Originator,
	#superclass : #Object,
	#instVars : [
		'state'
	],
	#category : #'Design-Pattern-Memento'
}

{ #category : #operations }
Originator >> memento [

	^ Memento originator: self
]

{ #category : #operations }
Originator >> restoreTo: aMemento [

	aMemento restoreOriginator: self
]

{ #category : #accessing }
Originator >> state [

	^ state
]

{ #category : #accessing }
Originator >> updateState: aSymbol [

	state := aSymbol
]
