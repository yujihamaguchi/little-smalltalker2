Class {
	#name : #CommandInvoker,
	#superclass : #Object,
	#instVars : [
		'commandDictionary'
	],
	#category : #'Design-Pattern-Command'
}

{ #category : #adding }
CommandInvoker >> addCommand: aCommand name: aSymbol [

	commandDictionary at: aSymbol put: aCommand

	
]

{ #category : #initialization }
CommandInvoker >> initialize [

	super initialize.
	commandDictionary := Dictionary new.
	^ self
]

{ #category : #'as yet unclassified' }
CommandInvoker >> pushButton: aSymbol [

	(commandDictionary at: aSymbol) execute
]
