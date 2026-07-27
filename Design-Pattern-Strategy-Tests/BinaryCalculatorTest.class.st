Class {
	#name : 'BinaryCalculatorTest',
	#superclass : 'TestCase',
	#category : 'Design-Pattern-Strategy-Tests',
	#package : 'Design-Pattern-Strategy-Tests'
}

{ #category : 'tests' }
BinaryCalculatorTest >> testAdd [
	| calculator result |
	"Arrange"
	calculator := BinaryCalculator strategy: AddStrategy new.
	
	"Act"
	result := calculator calculate: 3 and: 2.
	
	"Assert"
	self assert: result equals: 5
]

{ #category : 'tests' }
BinaryCalculatorTest >> testAddThenMultiply [
	| calculator n m result |
	"Arrange"
	calculator := BinaryCalculator strategy: AddStrategy new.
	n := 2.
	m := 3.

	"Act 1"
	result := calculator calculate: n and: m.

	"Assert 1"
	self assert: result equals: 5.

	"Arrange 2"
	calculator strategy: MultiplyStrategy new.

	"Act 2"
	result := calculator calculate: n and: m.

	"Assert 2"
	self assert: result equals: 6.
]

{ #category : 'tests' }
BinaryCalculatorTest >> testMultiply [
	| calculator result |
	"Arrange"
	calculator := BinaryCalculator strategy: MultiplyStrategy new.
	
	"Act"
	result := calculator calculate: 3 and: 2.
	
	"Assert"
	self assert: result equals: 6
]

{ #category : 'tests' }
BinaryCalculatorTest >> testSubtract [
	| calculator result |
	"Arrange"
	calculator := BinaryCalculator strategy: SubtractStrategy new.
	
	"Act"
	result := calculator calculate: 3 and: 2.
	
	"Assert"
	self assert: result equals: 1
]
