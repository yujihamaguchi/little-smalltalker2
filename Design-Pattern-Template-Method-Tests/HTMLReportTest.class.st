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
	self assert: result equals: '<html><ol><li>foo</li><li>bar</li><li>baz</li></ol></html>'
]
