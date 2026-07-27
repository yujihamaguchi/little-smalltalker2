Class {
	#name : 'AddStrategy',
	#superclass : 'Object',
	#traits : 'TBinaryCalculating',
	#classTraits : 'TBinaryCalculating classTrait',
	#category : 'Design-Pattern-Strategy',
	#package : 'Design-Pattern-Strategy'
}

{ #category : 'operating' }
AddStrategy >> calculate: aNumber and: anotherNumber [

	^ aNumber + anotherNumber 
]
