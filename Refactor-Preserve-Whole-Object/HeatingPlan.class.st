Class {
	#name : 'HeatingPlan',
	#superclass : 'Object',
	#instVars : [
		'low',
		'high'
	],
	#category : 'Refactor-Preserve-Whole-Object',
	#package : 'Refactor-Preserve-Whole-Object'
}

{ #category : 'instance creation' }
HeatingPlan class >> low: aLow high: aHigh [

	^ self new setLow: aLow high: aHigh
]

{ #category : 'accessing' }
HeatingPlan >> high [

	^ high
]

{ #category : 'accessing' }
HeatingPlan >> low [

	^ low
]

{ #category : 'private' }
HeatingPlan >> setLow: aLow high: aHigh [

	low := aLow.
	high := aHigh
]
