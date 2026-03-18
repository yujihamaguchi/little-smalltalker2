Class {
	#name : #CopyCommand,
	#superclass : #EditorCommand,
	#category : #'Design-Pattern-Command'
}

{ #category : #operations }
CopyCommand >> execute [

	os clipboard: document contents
]

{ #category : #operations }
CopyCommand >> undo [

	"no op"
]
