Class {
	#name : 'NumberRange',
	#superclass : 'Object',
	#instVars : [
		'low',
		'high'
	],
	#category : 'Refactor-Self-Encapsulate-Field',
	#package : 'Refactor-Self-Encapsulate-Field'
}

{ #category : 'instance creation' }
NumberRange class >> low: aLow high: aHigh [

	^ self new setLow: aLow high: aHigh
]

{ #category : 'operating' }
NumberRange >> includes: aNumber [

	^ (aNumber >= low) and: [ aNumber <= high ]
]

{ #category : 'private' }
NumberRange >> setLow: aLow high: aHigh [

	low := aLow.
	high := aHigh
]
