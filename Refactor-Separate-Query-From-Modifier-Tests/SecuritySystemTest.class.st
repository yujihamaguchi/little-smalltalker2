Class {
	#name : 'SecuritySystemTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Separate-Query-From-Modifier-Tests',
	#package : 'Refactor-Separate-Query-From-Modifier-Tests'
}

{ #category : 'tests' }
SecuritySystemTest >> testReportsMiscreant [

	| system result |
	"Arrange"
	system := SecuritySystem new.

	"Act"
	result := system checkAndReport: 'Thief'.

	"Assert"
	self assert: result
]
