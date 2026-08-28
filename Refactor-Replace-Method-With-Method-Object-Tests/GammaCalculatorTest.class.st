Class {
	#name : 'GammaCalculatorTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Replace-Method-With-Method-Object-Tests',
	#package : 'Refactor-Replace-Method-With-Method-Object-Tests'
}

{ #category : 'tests' }
GammaCalculatorTest >> testGamma [

	| calc result |
	"Arrange"
	calc := GammaCalculator new.

	"Act"
	result := calc gamma: 10 by: 20.

	"Assert"
	self assert: result equals: 1150
]
