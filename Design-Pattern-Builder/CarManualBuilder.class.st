Class {
	#name : #CarManualBuilder,
	#superclass : #CarBuilder,
	#category : #'Design-Pattern-Builder'
}

{ #category : #building }
CarManualBuilder >> build [

	| carManual |
	carManual := CarManual new.
	carManual engine: engine class name, ' equipped'.
	carManual seats: seats size asString, ' seats'.
	^ carManual.
]
