Class {
	#name : #CarProduct,
	#superclass : #Object,
	#instVars : [
		'engine',
		'seats'
	],
	#category : #'Design-Pattern-Builder'
}

{ #category : #accessing }
CarProduct >> engine [

	^ engine
]

{ #category : #accessing }
CarProduct >> engine: anEngine [

	engine := anEngine 
]

{ #category : #accessing }
CarProduct >> seats [

	^ seats
]

{ #category : #accessing }
CarProduct >> seats: theSeats [

	seats := theSeats 
]
