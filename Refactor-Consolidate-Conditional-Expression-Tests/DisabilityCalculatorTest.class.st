Class {
	#name : 'DisabilityCalculatorTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Consolidate-Conditional-Expression-Tests',
	#package : 'Refactor-Consolidate-Conditional-Expression-Tests'
}

{ #category : 'tests' }
DisabilityCalculatorTest >> testEligible [

	| calc result |
	"Arrange"
	calc := DisabilityCalculator seniority: 5 monthsDisabled: 6 partTime: false.

	"Act"
	result := calc disabilityAmount.

	"Assert"
	self assert: result equals: 500
]

{ #category : 'tests' }
DisabilityCalculatorTest >> testIneligibleBySeniority [

	| calc result |
	"Arrange"
	calc := DisabilityCalculator seniority: 1 monthsDisabled: 6 partTime: false.

	"Act"
	result := calc disabilityAmount.

	"Assert"
	self assert: result equals: 0
]
