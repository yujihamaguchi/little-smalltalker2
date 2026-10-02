Class {
	#name : 'Employee10Test',
	#superclass : 'TestCase',
	#category : 'Refactor-Introduce-Assertion-Tests',
	#package : 'Refactor-Introduce-Assertion-Tests'
}

{ #category : 'tests' }
Employee10Test >> testExpenseLimitFromPrimaryProject [

	| employee result |
	"Arrange"
	employee := Employee10 primaryProject: (Project10 memberExpenseLimit: 300).

	"Act"
	result := employee expenseLimit.

	"Assert"
	self assert: result equals: 300
]

{ #category : 'tests' }
Employee10Test >> testExpenseLimitOwnLimit [

	| employee result |
	"Arrange"
	employee := Employee10 expenseLimit: 500.

	"Act"
	result := employee expenseLimit.

	"Assert"
	self assert: result equals: 500
]
