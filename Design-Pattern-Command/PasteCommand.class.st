Class {
	#name : #PasteCommand,
	#superclass : #EditorCommand,
	#instVars : [
		'lastDocumentContents'
	],
	#category : #'Design-Pattern-Command'
}

{ #category : #operations }
PasteCommand >> execute [

	lastDocumentContents := document contents.
	document contents: lastDocumentContents, os clipboard
]

{ #category : #operations }
PasteCommand >> undo [

	document contents: lastDocumentContents 
]
