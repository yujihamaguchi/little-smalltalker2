Class {
	#name : 'WorkerTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Replace-Type-Code-With-Subclasses-Tests',
	#package : 'Refactor-Replace-Type-Code-With-Subclasses-Tests'
}

{ #category : 'tests' }
WorkerTest >> testEngineerBonus [

	| worker result |
	"Arrange"
	worker := Worker type: #engineer.

	"Act"
	result := worker annualBonus.

	"Assert"
	self assert: result equals: 5000
]

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
WorkerTest >> testManagerBonus [

	| worker result |
	"Arrange"
	worker := Worker type: #manager.

	"Act"
	result := worker annualBonus.

	"Assert"
	self assert: result equals: 16000
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
