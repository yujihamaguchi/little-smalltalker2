Class {
	#name : 'Invoice2Test',
	#superclass : 'TestCase',
	#category : 'Refactor-Introduce-Foreign-Method-Tests',
	#package : 'Refactor-Introduce-Foreign-Method-Tests'
}

{ #category : 'tests' }
Invoice2Test >> testNotOverdue [

	| invoice result |
	"Arrange"
	invoice := Invoice2 new.

	"Act"
	result := invoice isOverdueOn: 30 due: 5.

	"Assert"
	self deny: result
]

{ #category : 'tests' }
Invoice2Test >> testOverdue [

	| invoice result |
	"Arrange"
	invoice := Invoice2 new.

	"Act"
	result := invoice isOverdueOn: 40 due: 5.

	"Assert"
	self assert: result
]
