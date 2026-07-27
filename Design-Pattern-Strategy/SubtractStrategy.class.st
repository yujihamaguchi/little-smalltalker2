Class {
	#name : 'SubtractStrategy',
	#superclass : 'Object',
	#traits : 'TBinaryCalculating',
	#classTraits : 'TBinaryCalculating classTrait',
	#category : 'Design-Pattern-Strategy',
	#package : 'Design-Pattern-Strategy'
}

{ #category : 'operating' }
SubtractStrategy >> calculate: aNumber and: anotherNumber [

	^ aNumber - anotherNumber 
]
