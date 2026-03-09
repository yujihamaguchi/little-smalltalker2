Class {
	#name : #Editor,
	#superclass : #Object,
	#instVars : [
		'commandDictionary'
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
	commandDictionary := Dictionary new.
	^ self
]

{ #category : #processing }
Editor >> pushButton: aSymbol [

	(commandDictionary at: aSymbol) execute
]
