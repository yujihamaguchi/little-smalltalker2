Class {
	#name : #CopyCommand,
	#superclass : #EditorCommand,
	#category : #'Design-Pattern-Command'
}

{ #category : #execution }
CopyCommand >> execute [

	os clipboard: document contents
]
