Class {
	#name : 'Contract3',
	#superclass : 'Object',
	#instVars : [
		'start'
	],
	#category : 'Refactor-Introduce-Local-Extension',
	#package : 'Refactor-Introduce-Local-Extension'
}

{ #category : 'instance creation' }
Contract3 class >> startingOn: aDate [

	^ self new setStart: aDate
]

{ #category : 'private' }
Contract3 >> monthEndOf: aDate [
	"foreign method: should be in Date"

	^ Date year: aDate year month: aDate monthIndex day: aDate daysInMonth
]

{ #category : 'operating' }
Contract3 >> renewalDate [

	^ self monthEndOf: (start addMonths: 12)
]

{ #category : 'private' }
Contract3 >> setStart: aDate [

	start := aDate
]
