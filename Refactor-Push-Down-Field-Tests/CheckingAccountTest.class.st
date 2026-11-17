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
	account := CheckingAccount withRate: 0.

	"Act"
	result := account checkbookFee.

	"Assert"
	self assert: result equals: 3300
]
