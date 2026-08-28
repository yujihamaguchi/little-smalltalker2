Class {
	#name : 'Account10Test',
	#superclass : 'TestCase',
	#category : 'Refactor-Introduce-Assertion-Tests',
	#package : 'Refactor-Introduce-Assertion-Tests'
}

{ #category : 'tests' }
Account10Test >> testWithdraw [

	| account result |
	"Arrange"
	account := Account10 balance: 100.

	"Act"
	result := account withdraw: 30.

	"Assert"
	self assert: result equals: 70
]
