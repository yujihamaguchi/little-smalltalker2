Class {
	#name : 'CalculatorTest',
	#superclass : 'TestCase',
	#category : 'Design-Pattern-Strategy-Tests',
	#package : 'Design-Pattern-Strategy-Tests'
}

{ #category : 'tests' }
CalculatorTest >> testAdd [
	| calculator result |
	"Arrange"
	calculator := BinaryCalculator strategy: AddStrategy new.
	
	"Act"
	result := calculator calculate: 3 and: 2.
	
	"Assert"
	self assert: result equals: 5
]

{ #category : 'tests' }
CalculatorTest >> testMultiply [
	| calculator result |
	"Arrange"
	calculator := BinaryCalculator strategy: MultiplyStrategy new.
	
	"Act"
	result := calculator calculate: 3 and: 2.
	
	"Assert"
	self assert: result equals: 6
]

{ #category : 'tests' }
CalculatorTest >> testSubtract [
	| calculator result |
	"Arrange"
	calculator := BinaryCalculator strategy: SubtractStrategy new.
	
	"Act"
	result := calculator calculate: 3 and: 2.
	
	"Assert"
	self assert: result equals: 1
]
