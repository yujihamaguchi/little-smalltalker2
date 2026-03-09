Class {
	#name : #EditorControllerTest,
	#superclass : #TestCase,
	#category : #'Design-Pattern-Command-Tests'
}

{ #category : #tests }
EditorControllerTest >> testCutCommand [

	| document os editor |
	"Arrange"
	document := Document new.
	document contents: 'Foo'.
	os := OS new.
	self assert: os clipboard equals: ''.
	editor := Editor new.
	editor addCommand: (CutCommand document: document os: os) name: #cut.

	"Act"
	editor pushButton: #cut.

	"Assert"
	self assert: document contents equals: ''.
	self assert: os clipboard equals: 'Foo'
]
