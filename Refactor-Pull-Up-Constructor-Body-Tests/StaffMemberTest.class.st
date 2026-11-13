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
StaffMemberTest >> testManagerBonus [

	| manager result |
	"Arrange"
	manager := ManagerRole named: 'Bob' bonus: 100.

	"Act"
	result := manager bonus.

	"Assert"
	self assert: result equals: 100
]

{ #category : 'tests' }
StaffMemberTest >> testManagerName [

	| manager result |
	"Arrange"
	manager := ManagerRole named: 'Bob' bonus: 100.

	"Act"
	result := manager name.

	"Assert"
	self assert: result equals: 'Bob'
]
