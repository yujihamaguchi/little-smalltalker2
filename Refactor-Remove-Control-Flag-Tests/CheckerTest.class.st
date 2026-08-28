Class {
	#name : 'CheckerTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Remove-Control-Flag-Tests',
	#package : 'Refactor-Remove-Control-Flag-Tests'
}

{ #category : 'tests' }
CheckerTest >> testContains [

	| checker result |
	"Arrange"
	checker := Checker new.

	"Act"
	result := checker containsMiscreant: #('Al' 'Don' 'Bob').

	"Assert"
	self assert: result
]

{ #category : 'tests' }
CheckerTest >> testNotContains [

	| checker result |
	"Arrange"
	checker := Checker new.

	"Act"
	result := checker containsMiscreant: #('Al' 'Bob').

	"Assert"
	self deny: result
]
