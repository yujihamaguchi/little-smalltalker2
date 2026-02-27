Class {
	#name : #CarBodyBuilder,
	#superclass : #CarBuilder,
	#category : #'Design-Pattern-Builder'
}

{ #category : #building }
CarBodyBuilder >> build [

	| carBody |
	engine isNil ifTrue: [ self error: 'engine is required' ].
	carBody := CarBody new.
	carBody engine: engine.
	carBody seats: seats.
	^ carBody
]
