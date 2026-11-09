Class {
	#name : 'PatientTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Replace-Type-Code-With-Class-Tests',
	#package : 'Refactor-Replace-Type-Code-With-Class-Tests'
}

{ #category : 'tests' }
PatientTest >> testBloodGroup [

	| patient result |
	"Arrange"
	patient := Patient bloodGroup: #O.

	"Act"
	result := patient bloodGroup.

	"Assert"
	self assert: result equals: #O
]

{ #category : 'tests' }
PatientTest >> testCanReceiveFromUniversalDonor [

	| patient donor result |
	"Arrange"
	patient := Patient bloodGroup: #A.
	donor := Patient bloodGroup: #O.

	"Act"
	result := patient canReceiveFrom: donor.

	"Assert"
	self assert: result
]

{ #category : 'tests' }
PatientTest >> testCannotReceiveFromIncompatibleGroup [

	| patient donor result |
	"Arrange"
	patient := Patient bloodGroup: #A.
	donor := Patient bloodGroup: #B.

	"Act"
	result := patient canReceiveFrom: donor.

	"Assert"
	self deny: result
]

{ #category : 'tests' }
PatientTest >> testUniversalRecipient [

	| patient donor result |
	"Arrange"
	patient := Patient bloodGroup: #AB.
	donor := Patient bloodGroup: #B.

	"Act"
	result := patient canReceiveFrom: donor.

	"Assert"
	self assert: result
]
