Class {
	#name : #PasteCommand,
	#superclass : #EditorCommand,
	#category : #'Design-Pattern-Command'
}

{ #category : #execution }
PasteCommand >> execute [

	document contents: document contents, os clipboard
]
