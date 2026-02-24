Class {
	#name : #CarBody,
	#superclass : #Object,
	#instVars : [
		'engine',
		'seats'
	],
	#category : #'Design-Pattern-Builder'
}

{ #category : #accessing }
CarBody >> engine [

	^ engine
]

{ #category : #accessing }
CarBody >> engine: anEngine [

	engine := anEngine 
]

{ #category : #accessing }
CarBody >> seats [

	^ seats
]

{ #category : #accessing }
CarBody >> seats: theSeats [

	seats := theSeats 
]
