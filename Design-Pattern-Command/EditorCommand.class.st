Class {
	#name : #EditorCommand,
	#superclass : #Object,
	#instVars : [
		'document',
		'os'
	],
	#category : #'Design-Pattern-Command'
}

{ #category : #'instance creation' }
EditorCommand class >> document: aDocument os: anOS [

	^ self new document: aDocument os: anOS
]

{ #category : #accessing }
EditorCommand >> document: aDocument os: anOS [

	document := aDocument .
	os := anOS.
	^ self
]

{ #category : #execution }
EditorCommand >> execute [

	^ self subclassResponsibility 
]

{ #category : #'menu messages' }
EditorCommand >> undo [

	^ self subclassResponsibility 
]
