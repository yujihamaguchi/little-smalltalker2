Class {
	#name : 'PersonTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Extract-Class-Tests',
	#package : 'Refactor-Extract-Class-Tests'
}

{ #category : 'tests' }
PersonTest >> testTelephoneNumber [

	| person result |
	"Arrange"
	person := Person name: 'Alice' areaCode: '555' number: '1234'.
	"Act"
	result := person telephoneNumber.
	"Assert"
	self assert: result equals: '(555) 1234'
]
