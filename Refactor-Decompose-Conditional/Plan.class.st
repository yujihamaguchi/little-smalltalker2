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

{ #category : 'operating' }
Plan >> chargeForDay: aDay quantity: aQuantity [

	^ (aDay < summerStart or: [ aDay > summerEnd ])
		ifTrue: [ (aQuantity * winterRate) + winterServiceCharge ]
		ifFalse: [ aQuantity * summerRate ]
]

{ #category : 'accessing' }
Plan >> summerEnd: aDay [

	summerEnd := aDay
]

{ #category : 'accessing' }
Plan >> summerRate: aRate [

	summerRate := aRate
]

{ #category : 'accessing' }
Plan >> summerStart: aDay [

	summerStart := aDay
]

{ #category : 'accessing' }
Plan >> winterRate: aRate [

	winterRate := aRate
]

{ #category : 'accessing' }
Plan >> winterServiceCharge: aCharge [

	winterServiceCharge := aCharge
]
