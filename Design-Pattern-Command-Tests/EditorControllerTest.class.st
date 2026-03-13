Class {
	#name : #EditorControllerTest,
	#superclass : #TestCase,
	#instVars : [
		'document',
		'os',
		'editor'
	],
	#category : #'Design-Pattern-Command-Tests'
}

{ #category : #running }
EditorControllerTest >> setUp [

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
EditorControllerTest >> testCopyCommand [

	"Act"
	editor pushButton: #copy.

	"Assert"
	self assert: document contents equals: 'Hello world'.
	self assert: os clipboard equals: 'Hello world'
]

{ #category : #tests }
EditorControllerTest >> testCutCommand [

	"Act"
	editor pushButton: #cut.

	"Assert"
	self assert: document contents equals: ''.
	self assert: os clipboard equals: 'Hello world'
]

{ #category : #tests }
EditorControllerTest >> testPasteCommand [

	"Arrange"
	os clipboard: '!!!'.

	"Act"
	editor pushButton: #paste.

	"Assert"
	self assert: document contents equals: 'Hello world!!!'.
	self assert: os clipboard equals: '!!!'
]

{ #category : #tests }
EditorControllerTest >> testUndoCutCommand [

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
