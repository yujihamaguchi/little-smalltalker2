Class {
	#name : #HandlerTest,
	#superclass : #TestCase,
	#instVars : [
		'ceo',
		'generalManager',
		'manager'
	],
	#category : #'Design-Pattern-Chain-Of-Responsibility-Tests'
}

{ #category : #running }
HandlerTest >> setUp [

	ceo := CEO next: nil.
	generalManager := GeneralManager next: ceo.
	manager := Manager next: generalManager
]

{ #category : #tests }
HandlerTest >> testCEOApprovesAnyLeaveRequest [

	| leaveRequest result |
	"Arrange"
	6 to: 10 do: [ :days |
		leaveRequest := LeaveRequest days: days.
		"Act"
		result := manager handle: leaveRequest.
		"Assert"
		self
			assert: result
			equals: ('CEO approved {1}-days leave.' format: {days asString}) ]
]

{ #category : #tests }
HandlerTest >> testGeneralManagerApprovesLeaveRequestWithin5Days [

	| leaveRequest result |
	"Arrange"
	4 to: 5 do: [ :days |
		leaveRequest := LeaveRequest days: days.
		"Act"
		result := manager handle: leaveRequest.
		"Assert"
		self
			assert: result
			equals: ('General Manager approved {1}-days leave.' format: {days asString}) ]
]

{ #category : #tests }
HandlerTest >> testManagerHandlesLeaveRequestWithin3Days [

	| leaveRequest result |
	"Arrange"
	1 to: 3 do: [ :days |
		leaveRequest := LeaveRequest days: days.
		"Act"
		result := manager handle: leaveRequest.
		"Assert"
		self
			assert: result
			equals: ('Manager approved {1}-days leave.' format: {days asString}) ]
]
