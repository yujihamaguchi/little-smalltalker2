Class {
	#name : #CarBuilder,
	#superclass : #Object,
	#instVars : [
		'engine',
		'seats'
	],
	#category : #'Design-Pattern-Builder'
}

{ #category : #building }
CarBuilder >> build [

	^ self subclassResponsibility 
]

{ #category : #accessing }
CarBuilder >> withEngine: anEngine [

	engine := anEngine 
]

{ #category : #accessing }
CarBuilder >> withSeats: theSeats [

	seats := theSeats 
]
