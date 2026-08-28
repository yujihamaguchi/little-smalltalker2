Class {
	#name : 'NotifierTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Remove-Parameter-Tests',
	#package : 'Refactor-Remove-Parameter-Tests'
}

{ #category : 'tests' }
NotifierTest >> testNotify [

	| notifier result |
	"Arrange"
	notifier := Notifier new.

	"Act"
	result := notifier notify: 'Hi' priority: 5.

	"Assert"
	self assert: result equals: 'MSG: Hi'
]
