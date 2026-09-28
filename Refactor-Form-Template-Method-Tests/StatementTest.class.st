Class {
	#name : 'StatementTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Form-Template-Method-Tests',
	#package : 'Refactor-Form-Template-Method-Tests'
}

{ #category : 'tests' }
StatementTest >> testHtmlStatement [

	| customer result |
	"Arrange"
	customer := Customer name: 'Alice'.
	customer addRental: (Rental title: 'Jaws' charge: 3).
	customer addRental: (Rental title: 'Up' charge: 2).

	"Act"
	result := customer htmlStatement.

	"Assert"
	self assert: result equals: '<h1>Rentals for <em>Alice</em></h1><p>Jaws: 3<br>Up: 2<br><p>You owe <em>5</em></p>'
]

{ #category : 'tests' }
StatementTest >> testTextStatement [

	| customer result |
	"Arrange"

	customer := Customer name: 'Alice'.
	customer addRental: (Rental title: 'Jaws' charge: 3).
	customer addRental: (Rental title: 'Up' charge: 2).

	"Act"
	result := customer statement.

	"Assert"
	self assert: result equals: 'Rental Record for Alice', String cr,
		String tab, 'Jaws', String tab, '3', String cr,
		String tab, 'Up', String tab, '2', String cr,
		'Amount owed is 5'
]
