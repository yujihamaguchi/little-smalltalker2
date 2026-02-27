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
CarBuilder >> engine: anEngine [

	engine := anEngine.
	^ self
]

{ #category : #accessing }
CarBuilder >> seats: aSeatCollection [

	seats := aSeatCollection.
	^ self
]
