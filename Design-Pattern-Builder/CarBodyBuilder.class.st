Class {
	#name : #CarBodyBuilder,
	#superclass : #CarBuilder,
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
