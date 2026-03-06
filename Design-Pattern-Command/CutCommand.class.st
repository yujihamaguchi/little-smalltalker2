Class {
	#name : #CutCommand,
	#superclass : #Object,
	#instVars : [
		'receiver'
	],
	#category : #'Design-Pattern-Command'
}

{ #category : #accessing }
CutCommand class >> receiver: aReceiver [

	^ self new receiver: aReceiver
]

{ #category : #execution }
CutCommand >> execute [

	receiver clipboard: receiver contents.
	receiver contents: ''
]

{ #category : #accessing }
CutCommand >> receiver: aReceiver [

	receiver := aReceiver
]
