Class {
	#name : 'StaffMemberTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Pull-Up-Constructor-Body-Tests',
	#package : 'Refactor-Pull-Up-Constructor-Body-Tests'
}

{ #category : 'tests' }
StaffMemberTest >> testClerkName [

	| clerk result |
	"Arrange"
	clerk := ClerkRole named: 'Amy'.

	"Act"
	result := clerk name.

	"Assert"
	self assert: result equals: 'Amy'
]

{ #category : 'tests' }
StaffMemberTest >> testManagerName [

	| manager result |
	"Arrange"
	manager := ManagerRole named: 'Boss' bonus: 100.

	"Act"
	result := manager name.

	"Assert"
	self assert: result equals: 'Boss'
]
