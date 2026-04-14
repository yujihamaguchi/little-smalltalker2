Class {
	#name : #CareTaker,
	#superclass : #Object,
	#instVars : [
		'mementos'
	],
	#category : #'Design-Pattern-Memento'
}

{ #category : #adding }
CareTaker >> addMemento: aMemento [

	mementos add: aMemento
]

{ #category : #initialization }
CareTaker >> initialize [

	super initialize.
	mementos := OrderedCollection new
]

{ #category : #accessing }
CareTaker >> mementoAt: aNumber [

	^ mementos at: aNumber
]
