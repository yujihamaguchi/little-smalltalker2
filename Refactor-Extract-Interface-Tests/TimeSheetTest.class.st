Class {
	#name : 'TimeSheetTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Extract-Interface-Tests',
	#package : 'Refactor-Extract-Interface-Tests'
}

{ #category : 'tests' }
TimeSheetTest >> testChargeForContractor [

	| sheet result |
	"Arrange"
	sheet := TimeSheet new.

	"Act"
	result := sheet chargeFor: (Contractor rate: 100 special: true) days: 3.

	"Assert"
	self assert: result equals: 600
]

{ #category : 'tests' }
TimeSheetTest >> testChargeForSalariedWorker [

	| sheet result |
	"Arrange"
	sheet := TimeSheet new.

	"Act"
	result := sheet chargeFor: (SalariedWorker monthlySalary: 4000 skilled: false) days: 5.

	"Assert"
	self assert: result equals: 1000
]
