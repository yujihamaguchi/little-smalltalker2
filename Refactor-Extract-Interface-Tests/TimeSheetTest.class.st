Class {
	#name : 'TimeSheetTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Extract-Interface-Tests',
	#package : 'Refactor-Extract-Interface-Tests'
}

{ #category : 'tests' }
TimeSheetTest >> testChargeWithSpecialSkill [

	| sheet result |
	"Arrange"
	sheet := TimeSheet new.

	"Act"
	result := sheet chargeFor: (Contractor rate: 100 special: true) days: 3.

	"Assert"
	self assert: result equals: 600
]
