Class {
	#name : #CutCommand,
	#superclass : #Object,
	#instVars : [
		'document',
		'os'
	],
	#category : #'Design-Pattern-Command'
}

{ #category : #accessing }
CutCommand class >> document: aDocument os: anOS [

	^ self new document: aDocument os: anOS
]

{ #category : #accessing }
CutCommand >> document: aDocument os: anOS [

	document := aDocument .
	os := anOS.
	^ self
]

{ #category : #execution }
CutCommand >> execute [

	os clipboard: document contents.
	document contents: ''
]
