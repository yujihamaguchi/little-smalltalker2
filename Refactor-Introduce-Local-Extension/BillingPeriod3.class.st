Class {
	#name : 'BillingPeriod3',
	#superclass : 'Object',
	#instVars : [
		'start'
	],
	#category : 'Refactor-Introduce-Local-Extension',
	#package : 'Refactor-Introduce-Local-Extension'
}

{ #category : 'instance creation' }
BillingPeriod3 class >> startingOn: aDate [

	^ self new setStart: aDate
]

{ #category : 'private' }
BillingPeriod3 >> businessDayOnOrAfter: aDate [
	"foreign method: should be in Date"

	| day |
	day := aDate.
	[ self isWeekend: day ] whileTrue: [ day := day next ].
	^ day
]

{ #category : 'operating' }
BillingPeriod3 >> closingDate [

	^ self monthEndOf: start
]

{ #category : 'private' }
BillingPeriod3 >> isWeekend: aDate [
	"foreign method: should be in Date"

	^ aDate dayOfWeek = 1 or: [ aDate dayOfWeek = 7 ]
]

{ #category : 'private' }
BillingPeriod3 >> monthEndOf: aDate [
	"foreign method: should be in Date"

	^ Date year: aDate year month: aDate monthIndex day: aDate daysInMonth
]

{ #category : 'operating' }
BillingPeriod3 >> paymentDate [

	^ self businessDayOnOrAfter: (self monthEndOf: self closingDate next)
]

{ #category : 'private' }
BillingPeriod3 >> setStart: aDate [

	start := aDate
]
