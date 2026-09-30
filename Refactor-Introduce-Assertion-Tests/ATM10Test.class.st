Class {
	#name : 'ATM10Test',
	#superclass : 'TestCase',
	#category : 'Refactor-Introduce-Assertion-Tests',
	#package : 'Refactor-Introduce-Assertion-Tests'
}

{ #category : 'tests' }
ATM10Test >> testDispense [

	| account atm result |
	"Arrange"
	account := Account10 balance: 100.
	atm := ATM10 account: account.

	"Act"
	result := atm dispense: 30.

	"Assert"
	self assert: result equals: 30.
	self assert: account balance equals: 70

]

{ #category : 'tests' }
ATM10Test >> testDispenseMoreThanBalance [

	| account atm result |
	"Arrange"
	account := Account10 balance: 100.
	atm := ATM10 account: account.

	"Act"
	result := atm dispense: 101.

	"Assert"
	self assert: result equals: 0.
	self assert: account balance equals: 100

]
