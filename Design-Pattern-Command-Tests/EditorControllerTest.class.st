Class {
	#name : #EditorControllerTest,
	#superclass : #TestCase,
	#instVars : [
		'ceo',
		'generalManager',
		'manager'
	],
	#category : #'Design-Pattern-Command-Tests'
}

{ #category : #tests }
EditorControllerTest >> testCutCommand [

	| editor commandInvoker |
	"Arrange"
	editor := Editor new.
	editor contents: 'Foo'.
	commandInvoker := CommandInvoker new.
	commandInvoker 
		addCommand: (CutCommand receiver: editor)
		name: #cut.

	"Act"
	commandInvoker pushButton: #cut.

	"Assert"
	self assert: editor contents equals: ''.
	self assert: editor clipboard equals: 'Foo'
]
