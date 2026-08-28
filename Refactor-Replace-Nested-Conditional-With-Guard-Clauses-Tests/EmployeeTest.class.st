Class {
	#name : 'EmployeeTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Replace-Nested-Conditional-With-Guard-Clauses-Tests',
	#package : 'Refactor-Replace-Nested-Conditional-With-Guard-Clauses-Tests'
}

{ #category : 'tests' }
EmployeeTest >> testDeadPay [

	| employee result |
	"Arrange"
	employee := Employee dead: true separated: false retired: false.

	"Act"
	result := employee payAmount.

	"Assert"
	self assert: result equals: 1
]

{ #category : 'tests' }
EmployeeTest >> testNormalPay [

	| employee result |
	"Arrange"
	employee := Employee dead: false separated: false retired: false.

	"Act"
	result := employee payAmount.

	"Assert"
	self assert: result equals: 4
]

{ #category : 'tests' }
EmployeeTest >> testRetiredPay [

	| employee result |
	"Arrange"
	employee := Employee dead: false separated: false retired: true.

	"Act"
	result := employee payAmount.

	"Assert"
	self assert: result equals: 3
]

{ #category : 'tests' }
EmployeeTest >> testSeparatedPay [

	| employee result |
	"Arrange"
	employee := Employee dead: false separated: true retired: false.

	"Act"
	result := employee payAmount.

	"Assert"
	self assert: result equals: 2
]
