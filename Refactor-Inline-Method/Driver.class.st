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

	^ self new numberOfLateDeliveries: aNumber; yourself
]

{ #category : 'operating' }
Driver >> moreThanFiveLateDeliveries [

	^ numberOfLateDeliveries > 5
]

{ #category : 'accessing' }
Driver >> numberOfLateDeliveries: aNumber [

	numberOfLateDeliveries := aNumber
]

{ #category : 'operating' }
Driver >> rating [

	^ self moreThanFiveLateDeliveries ifTrue: [ 2 ] ifFalse: [ 1 ]
]
