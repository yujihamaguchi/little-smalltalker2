Class {
	#name : 'Report4Test',
	#superclass : 'TestCase',
	#category : 'Refactor-Hide-Method-Tests',
	#package : 'Refactor-Hide-Method-Tests'
}

{ #category : 'tests' }
Report4Test >> testRender [

	| report result |
	"Arrange"
	report := Report4 title: 'Sales'.

	"Act"
	result := report render.

	"Assert"
	self assert: result equals: '*** Sales ***'
]
