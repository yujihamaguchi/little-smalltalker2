Class {
	#name : 'StaffTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Hide-Delegate-Tests',
	#package : 'Refactor-Hide-Delegate-Tests'
}

{ #category : 'tests' }
StaffTest >> testManagerThroughDepartment [

	| staff result |
	"Arrange"
	staff := Staff department: (Department manager: 'Boss').

	"Act"
	result := staff department manager.

	"Assert"
	self assert: result equals: 'Boss'
]
