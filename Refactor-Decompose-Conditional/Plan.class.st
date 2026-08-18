Class {
	#name : 'Plan',
	#superclass : 'Object',
	#instVars : [
		'summerStart',
		'summerEnd',
		'summerRate',
		'winterRate',
		'winterServiceCharge'
	],
	#category : 'Refactor-Decompose-Conditional',
	#package : 'Refactor-Decompose-Conditional'
}

{ #category : 'instance creation' }
Plan class >> summerStart: aStart end: anEnd summerRate: aSummerRate winterRate: aWinterRate winterServiceCharge: aCharge [

	^ self new
		setSummerStart: aStart end: anEnd summerRate: aSummerRate winterRate: aWinterRate winterServiceCharge: aCharge
]

{ #category : 'operating' }
Plan >> chargeForDay: aDay quantity: aQuantity [

	^ (aDay < summerStart or: [ aDay > summerEnd ])
		ifTrue: [ (aQuantity * winterRate) + winterServiceCharge ]
		ifFalse: [ aQuantity * summerRate ]
]

{ #category : 'private' }
Plan >> setSummerStart: aStart end: anEnd summerRate: aSummerRate winterRate: aWinterRate winterServiceCharge: aCharge [

	summerStart := aStart.
	summerEnd := anEnd.
	summerRate := aSummerRate.
	winterRate := aWinterRate.
	winterServiceCharge := aCharge
]
