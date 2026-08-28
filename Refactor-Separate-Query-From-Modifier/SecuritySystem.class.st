Class {
	#name : 'SecuritySystem',
	#superclass : 'Object',
	#instVars : [
		'alarmCount'
	],
	#category : 'Refactor-Separate-Query-From-Modifier',
	#package : 'Refactor-Separate-Query-From-Modifier'
}

{ #category : 'accessing' }
SecuritySystem >> alarmCount [

	^ alarmCount
]

{ #category : 'operating' }
SecuritySystem >> checkAndReport: aName [

	aName = 'Thief' ifTrue: [ alarmCount := alarmCount + 1. ^ true ].
	^ false
]

{ #category : 'initialization' }
SecuritySystem >> initialize [

	alarmCount := 0
]
