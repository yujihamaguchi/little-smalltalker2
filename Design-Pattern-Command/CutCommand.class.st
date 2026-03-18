Class {
	#name : #CutCommand,
	#superclass : #EditorCommand,
	#category : #'Design-Pattern-Command'
}

{ #category : #operations }
CutCommand >> execute [

	os clipboard: document contents.
	document contents: ''
]

{ #category : #operations }
CutCommand >> undo [

	document contents: os clipboard
]
