Class {
	#name : 'ReportTest',
	#superclass : 'TestCase',
	#category : 'Design-Pattern-Template-Method-Tests',
	#package : 'Design-Pattern-Template-Method-Tests'
}

{ #category : 'tests' }
ReportTest >> testFetch [
	| report result |
	"Arrange"
	report := Report new.

	"Act"
	result := report fetch.

	"Assert"
	self assert: result equals: { 'foo'. 'bar'. 'baz' } 
]

{ #category : 'tests' }
ReportTest >> testGenerate [
	| report result |
	"Arrange"
	report := Report new.
	report stub fetch willReturn: #fetched.
	(report stub render: #fetched) willReturn: #formatted.
	
	"Act"
	result := report generate.

	"Assert"
	report should receive render: #fetched.
	self assert: result equals: #formatted.
]
