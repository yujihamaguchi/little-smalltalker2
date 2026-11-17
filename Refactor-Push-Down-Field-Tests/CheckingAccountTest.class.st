Class {
	#name : 'CheckingAccountTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Push-Down-Field-Tests',
	#package : 'Refactor-Push-Down-Field-Tests'
}

{ #category : 'tests' }
CheckingAccountTest >> testCheckbookFee [

	| account result |
	"Arrange"
	account := CheckingAccount number: '7654321' rate: 0.

	"Act"
	result := account checkbookFee.

	"Assert"
	self assert: result equals: 3300
]

{ #category : 'tests' }
CheckingAccountTest >> testNumber [

	| account result |
	"Arrange"
	account := CheckingAccount number: '7654321' rate: 0.

	"Act"
	result := account number.

	"Assert"
	self assert: result equals: '7654321'
]
