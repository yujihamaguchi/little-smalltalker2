Class {
	#name : 'Person9Test',
	#superclass : 'TestCase',
	#category : 'Refactor-Inline-Class-Tests',
	#package : 'Refactor-Inline-Class-Tests'
}

{ #category : 'tests' }
Person9Test >> testPhoneNumber [

	| person result |
	"Arrange"
	person := Person9 number: '5551234'.

	"Act"
	result := person phoneNumber.

	"Assert"
	self assert: result equals: '5551234'
]
