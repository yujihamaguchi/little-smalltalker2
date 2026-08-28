Class {
	#name : 'PayrollTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Replace-Magic-Number-With-Symbolic-Constant-Tests',
	#package : 'Refactor-Replace-Magic-Number-With-Symbolic-Constant-Tests'
}

{ #category : 'tests' }
PayrollTest >> testTax [

	| payroll result |
	"Arrange"
	payroll := Payroll new.

	"Act"
	result := payroll taxFor: 1000.

	"Assert"
	self assert: result equals: 200
]
