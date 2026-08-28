Class {
	#name : 'NumberRangeTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Self-Encapsulate-Field-Tests',
	#package : 'Refactor-Self-Encapsulate-Field-Tests'
}

{ #category : 'tests' }
NumberRangeTest >> testExcludes [

	| range result |
	"Arrange"
	range := NumberRange low: 1 high: 10.

	"Act"
	result := range includes: 20.

	"Assert"
	self deny: result
]

{ #category : 'tests' }
NumberRangeTest >> testIncludes [

	| range result |
	"Arrange"
	range := NumberRange low: 1 high: 10.

	"Act"
	result := range includes: 5.

	"Assert"
	self assert: result
]
