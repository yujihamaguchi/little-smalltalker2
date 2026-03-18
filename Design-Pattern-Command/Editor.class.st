Class {
	#name : #Editor,
	#superclass : #Object,
	#instVars : [
		'commandDictionary',
		'lastCommand'
	],
	#category : #'Design-Pattern-Command'
}

{ #category : #adding }
Editor >> addCommand: aCommand name: aSymbol [

	commandDictionary at: aSymbol put: aCommand
]

{ #category : #initialization }
Editor >> initialize [

	super initialize.
	commandDictionary := Dictionary new
]

{ #category : #processing }
Editor >> pushButton: aSymbol [

	| command |
	command := commandDictionary at: aSymbol.
	command execute.
	lastCommand := command
]

{ #category : #processing }
Editor >> pushUndoButton [

	lastCommand ifNotNil: [ lastCommand undo ]
]
