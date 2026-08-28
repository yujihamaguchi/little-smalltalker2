Class {
	#name : 'CartTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Inline-Temp-Tests',
	#package : 'Refactor-Inline-Temp-Tests'
}

{ #category : 'tests' }
CartTest >> testExpensive [

	| cart result |
	"Arrange"
	cart := Cart amount: 150.

	"Act"
	result := cart isExpensive.

	"Assert"
	self assert: result
]
