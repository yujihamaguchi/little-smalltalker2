Class {
	#name : 'Driver',
	#superclass : 'Object',
	#instVars : [
		'numberOfLateDeliveries'
	],
	#category : 'Refactor-Inline-Method',
	#package : 'Refactor-Inline-Method'
}

{ #category : 'instance creation' }
Driver class >> lateDeliveries: aNumber [

	^ self new setNumberOfLateDeliveries: aNumber
]

{ #category : 'operating' }
Driver >> moreThanFiveLateDeliveries [

	^ numberOfLateDeliveries > 5
]

{ #category : 'operating' }
Driver >> rating [

	^ self moreThanFiveLateDeliveries ifTrue: [ 2 ] ifFalse: [ 1 ]
]

{ #category : 'private' }
Driver >> setNumberOfLateDeliveries: aNumber [

	numberOfLateDeliveries := aNumber
]
