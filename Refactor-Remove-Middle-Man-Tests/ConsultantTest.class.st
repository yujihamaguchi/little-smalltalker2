Class {
	#name : 'ConsultantTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Remove-Middle-Man-Tests',
	#package : 'Refactor-Remove-Middle-Man-Tests'
}

{ #category : 'tests' }
ConsultantTest >> testCeoViaMiddleMan [

	| consultant result |
	"Arrange"
	consultant := Consultant company: (Company ceo: 'Tim').

	"Act"
	result := consultant ceo.

	"Assert"
	self assert: result equals: 'Tim'
]
