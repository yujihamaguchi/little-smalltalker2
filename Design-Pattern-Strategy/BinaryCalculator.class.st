Class {
	#name : 'BinaryCalculator',
	#superclass : 'Object',
	#instVars : [
		'strategy'
	],
	#category : 'Design-Pattern-Strategy',
	#package : 'Design-Pattern-Strategy'
}

{ #category : 'accessing' }
BinaryCalculator class >> strategy: anStrategy [

	^ self new strategy: anStrategy; yourself
]

{ #category : 'as yet unclassified' }
BinaryCalculator >> calculate: aNumber and: anotherNumber [

	^ strategy calculate: aNumber and: anotherNumber 
]

{ #category : 'accessing' }
BinaryCalculator >> strategy: anStrategy [

	strategy := anStrategy 
]
