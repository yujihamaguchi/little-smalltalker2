Class {
	#name : 'Vehicle',
	#superclass : 'Object',
	#instVars : [
		'numberOfWheels'
	],
	#category : 'Refactor-Pull-Up-Method',
	#package : 'Refactor-Pull-Up-Method'
}

{ #category : 'instance creation' }
Vehicle class >> wheels: aNumber [

	^ self new setNumberOfWheels: aNumber
]

{ #category : 'private' }
Vehicle >> setNumberOfWheels: aNumber [

	numberOfWheels := aNumber
]
