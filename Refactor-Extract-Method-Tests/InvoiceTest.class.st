Class {
	#name : 'InvoiceTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Extract-Method-Tests',
	#package : 'Refactor-Extract-Method-Tests'
}

{ #category : 'tests' }
InvoiceTest >> testStatement [

	| invoice result |
	"Arrange"
	invoice := Invoice customer: 'Alice' amount: 100.

	"Act"
	result := invoice statement.

	"Assert"
	self assert: result equals: ('Customer: Alice', String cr, 'Amount: 100')
]
