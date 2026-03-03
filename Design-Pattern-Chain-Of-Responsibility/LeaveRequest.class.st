Class {
	#name : #LeaveRequest,
	#superclass : #Object,
	#instVars : [
		'days'
	],
	#category : #'Design-Pattern-Chain-Of-Responsibility'
}

{ #category : #'instance creation' }
LeaveRequest class >> days: aNumber [

	^ self new days: aNumber
]

{ #category : #accessing }
LeaveRequest >> days [

	^ days
]

{ #category : #'private accessing' }
LeaveRequest >> days: aNumber [

	days := aNumber.
	^ self
]
