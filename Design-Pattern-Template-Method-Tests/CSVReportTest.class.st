Class {
	#name : 'CSVReportTest',
	#superclass : 'TestCase',
	#category : 'Design-Pattern-Template-Method-Tests',
	#package : 'Design-Pattern-Template-Method-Tests'
}

{ #category : 'tests' }
CSVReportTest >> testGenerate [
	| report result |
	"Arrange"
	report := CSVReport new.
	
	"Act"
	result := report generate.
	
	"Assert"
	self assert: result equals: 'foo,bar,baz'
]
