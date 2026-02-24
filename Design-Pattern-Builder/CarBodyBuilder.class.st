Class {
	#name : #CarBodyBuilder,
	#superclass : #Object,
	#instVars : [
		'engine',
		'seats'
	],
	#category : #'Design-Pattern-Builder'
}

{ #category : #accessing }
CarBodyBuilder >> build [

	| carBody |
	carBody := CarBody new.
	carBody engine: engine.
	carBody seats: seats.
	^ carBody
]

{ #category : #accessing }
CarBodyBuilder >> withEngine: anEngine [

	engine := anEngine 
]

{ #category : #accessing }
CarBodyBuilder >> withSeats: theSeats [

	seats := theSeats 
]
