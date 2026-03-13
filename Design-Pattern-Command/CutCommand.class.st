Class {
	#name : #CutCommand,
	#superclass : #EditorCommand,
	#category : #'Design-Pattern-Command'
}

{ #category : #execution }
CutCommand >> execute [

	os clipboard: document contents.
	document contents: ''
]

{ #category : #'menu messages' }
CutCommand >> undo [

	document contents: os clipboard
]
