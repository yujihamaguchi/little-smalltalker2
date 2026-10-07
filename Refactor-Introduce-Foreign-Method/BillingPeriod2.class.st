Class {
	#name : 'BillingPeriod2',
	#superclass : 'Object',
	#instVars : [
		'start'
	],
	#category : 'Refactor-Introduce-Foreign-Method',
	#package : 'Refactor-Introduce-Foreign-Method'
}

{ #category : 'instance creation' }
BillingPeriod2 class >> startingOn: aDate [

	^ self new setStart: aDate
]

{ #category : 'operating' }
BillingPeriod2 >> closingDate [

	^ Date year: start year month: start monthIndex day: start daysInMonth
]

{ #category : 'private' }
BillingPeriod2 >> setStart: aDate [

	start := aDate
]
