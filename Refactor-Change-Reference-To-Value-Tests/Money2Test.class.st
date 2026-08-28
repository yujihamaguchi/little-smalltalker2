Class {
	#name : 'Money2Test',
	#superclass : 'TestCase',
	#category : 'Refactor-Change-Reference-To-Value-Tests',
	#package : 'Refactor-Change-Reference-To-Value-Tests'
}

{ #category : 'tests' }
Money2Test >> testAmount [

	| money result |
	"Arrange"
	money := Money2 amount: 5.

	"Act"
	result := money amount.

	"Assert"
	self assert: result equals: 5
]
