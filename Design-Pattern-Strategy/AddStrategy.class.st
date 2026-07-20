Class {
	#name : 'AddStrategy',
	#superclass : 'Object',
	#traits : 'TBinaryCalculating',
	#classTraits : 'TBinaryCalculating classTrait',
	#category : 'Design-Pattern-Strategy',
	#package : 'Design-Pattern-Strategy'
}

{ #category : 'as yet unclassified' }
AddStrategy >> calculate: aNumber and: anotherNumber [

	^ aNumber + anotherNumber 
]
