Class {
	#name : #EditorTest,
	#superclass : #TestCase,
	#instVars : [
		'document',
		'os',
		'editor'
	],
	#category : #'Design-Pattern-Command-Tests'
}

{ #category : #running }
EditorTest >> setUp [

	"Arrange"
	editor := Editor new.

	document := Document new.
	document contents: 'Hello world'.
	os := OS new.
	self assertEmpty: os clipboard.

	editor addCommand: (CutCommand document: document os: os) name: #cut.
	editor
		addCommand: (CopyCommand document: document os: os)
		name: #copy.
	editor
		addCommand: (PasteCommand document: document os: os)
		name: #paste
]

{ #category : #tests }
EditorTest >> testCopyCommand [

	"Act"
	editor pushButton: #copy.

	"Assert"
	self assert: document contents equals: 'Hello world'.
	self assert: os clipboard equals: 'Hello world'
]

{ #category : #tests }
EditorTest >> testCutCommand [

	"Act"
	editor pushButton: #cut.

	"Assert"
	self assert: document contents equals: ''.
	self assert: os clipboard equals: 'Hello world'
]

{ #category : #tests }
EditorTest >> testPasteCommand [

	"Arrange"
	os clipboard: '!!!'.

	"Act"
	editor pushButton: #paste.

	"Assert"
	self assert: document contents equals: 'Hello world!!!'.
	self assert: os clipboard equals: '!!!'
]

{ #category : #tests }
EditorTest >> testUndoCopyCommand [

	| documentContents |
	"Arrange"
	documentContents := 'Hello world'.
	document contents: documentContents.
	editor pushButton: #copy.
	self assert: os clipboard equals: documentContents.

	"Act"
	editor pushUndoButton.


	"Assert"
	self assert: os clipboard equals: documentContents
]

{ #category : #tests }
EditorTest >> testUndoCutCommand [

	"Arrange"
	editor pushButton: #cut.
	self assert: document contents equals: ''.
	self assert: os clipboard equals: 'Hello world'.

	"Act"
	editor pushUndoButton.

	"Assert"
	self assert: document contents equals: 'Hello world'.
	self assert: os clipboard equals: 'Hello world'
]

{ #category : #tests }
EditorTest >> testUndoPasteCommand [

	"Arrange"
	document contents: 'Hello '.
	os clipboard: 'world'.
	editor pushButton: #paste.
	self assert: document contents equals: 'Hello world'.

	"Act"
	editor pushUndoButton.

	"Assert"
	self assert: document contents equals: 'Hello '.
	self assert: os clipboard equals: 'world'
]

{ #category : #tests }
EditorTest >> testUndoWithoutLastCommand [

	"Act & Assert"
	self shouldnt: [ editor pushUndoButton ] raise: Error
]
