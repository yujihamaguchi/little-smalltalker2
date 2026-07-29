Class {
	#name : 'ReportTest',
	#superclass : 'TestCase',
	#category : 'Design-Pattern-Template-Method-Tests',
	#package : 'Design-Pattern-Template-Method-Tests'
}

{ #category : 'tests' }
ReportTest >> testGenerate [
	| report |
	"Arrange"
	report := Report new.
	report stub fetch willReturn: #fetched.

	"Act"
	report generate.

	"Assert"
	report should receive format: #fetched.
]
