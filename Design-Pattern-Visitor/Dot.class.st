Class {
	#name : 'Dot',
	#superclass : 'Object',
	#traits : 'TVisitorAccepting',
	#classTraits : 'TVisitorAccepting classTrait',
	#instVars : [
		'x',
		'y'
	],
	#category : 'Design-Pattern-Visitor',
	#package : 'Design-Pattern-Visitor'
}

{ #category : 'instance creation' }
Dot class >> x: aNumber y: anotherNumber [

	^ self new x: aNumber y: anotherNumber; yourself 
]

{ #category : 'accepting' }
Dot >> accept: aVisitor [

	^ aVisitor visitDot: self
]

{ #category : 'accessing' }
Dot >> x [

	^ x
]

{ #category : 'accessing' }
Dot >> x: aNumber y: anotherNumber [

	x := aNumber.
	y := anotherNumber
]

{ #category : 'accessing' }
Dot >> y [
	^ y
]
