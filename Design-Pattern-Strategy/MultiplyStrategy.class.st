Class {
	#name : 'MultiplyStrategy',
	#superclass : 'Object',
	#traits : 'TBinaryCalculating',
	#classTraits : 'TBinaryCalculating classTrait',
	#category : 'Design-Pattern-Strategy',
	#package : 'Design-Pattern-Strategy'
}

{ #category : 'as yet unclassified' }
MultiplyStrategy >> calculate: aNumber and: anotherNumber [

	^ aNumber * anotherNumber 
]
