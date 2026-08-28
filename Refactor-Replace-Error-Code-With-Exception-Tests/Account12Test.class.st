Class {
	#name : 'Account12Test',
	#superclass : 'TestCase',
	#category : 'Refactor-Replace-Error-Code-With-Exception-Tests',
	#package : 'Refactor-Replace-Error-Code-With-Exception-Tests'
}

{ #category : 'tests' }
Account12Test >> testOverdraw [

	| account result |
	"Arrange"
	account := Account12 balance: 100.

	"Act"
	result := account withdraw: 200.

	"Assert"
	self assert: result equals: -1
]

{ #category : 'tests' }
Account12Test >> testWithdraw [

	| account result |
	"Arrange"
	account := Account12 balance: 100.

	"Act"
	result := account withdraw: 30.

	"Assert"
	self assert: result equals: 70
]
