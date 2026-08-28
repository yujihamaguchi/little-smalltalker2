Class {
	#name : 'WorkerTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Replace-Type-Code-With-Subclasses-Tests',
	#package : 'Refactor-Replace-Type-Code-With-Subclasses-Tests'
}

{ #category : 'tests' }
WorkerTest >> testEngineerPay [

	| worker result |
	"Arrange"
	worker := Worker type: #engineer.

	"Act"
	result := worker monthlyPay.

	"Assert"
	self assert: result equals: 5000
]

{ #category : 'tests' }
WorkerTest >> testManagerPay [

	| worker result |
	"Arrange"
	worker := Worker type: #manager.

	"Act"
	result := worker monthlyPay.

	"Assert"
	self assert: result equals: 8000
]
