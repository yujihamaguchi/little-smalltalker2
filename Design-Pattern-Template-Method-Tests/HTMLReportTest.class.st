Class {
	#name : 'HTMLReportTest',
	#superclass : 'TestCase',
	#category : 'Design-Pattern-Template-Method-Tests',
	#package : 'Design-Pattern-Template-Method-Tests'
}

{ #category : 'tests' }
HTMLReportTest >> testGenerate [
	| report result |
	"Arrange"
	report := HTMLReport new.
	
	"Act"
	result := report generate.
	
	"Arrange"
	self assert: result equals: '<ul><li>foo</li><li>bar</li><li>baz</li></ul>'
]
