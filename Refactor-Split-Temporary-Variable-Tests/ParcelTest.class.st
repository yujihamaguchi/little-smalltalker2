Class {
	#name : 'ParcelTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Split-Temporary-Variable-Tests',
	#package : 'Refactor-Split-Temporary-Variable-Tests'
}

{ #category : 'tests' }
ParcelTest >> testSummary [

	| parcel result |
	"Arrange"
	parcel := Parcel height: 3 width: 4.

	"Act"
	result := parcel summary.

	"Assert"
	self assert: result equals: 26
]
