Class {
	#name : 'Circle',
	#superclass : 'Object',
	#traits : 'TVisitorAccepting',
	#classTraits : 'TVisitorAccepting classTrait',
	#instVars : [
		'x',
		'y',
		'r'
	],
	#category : 'Design-Pattern-Visitor',
	#package : 'Design-Pattern-Visitor'
}

{ #category : 'as yet unclassified' }
Circle class >> x: xNumber y: yNumber r: rNumber [

	^ self new x: xNumber y: yNumber r: rNumber; yourself 
]

{ #category : 'accepting' }
Circle >> accept: aVisitor [

	^ aVisitor visitCircle: self

	
]

{ #category : 'accessing' }
Circle >> r [

	^ r
]

{ #category : 'accessing' }
Circle >> x [

	^ x
]

{ #category : 'accessing' }
Circle >> x: xNumber y: yNumber r: rNumber [

	x := xNumber.
	y := yNumber.
	r := rNumber 
]

{ #category : 'accessing' }
Circle >> y [

	^ y
]
