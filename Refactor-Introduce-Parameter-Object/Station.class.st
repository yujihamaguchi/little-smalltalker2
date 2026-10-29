Class {
	#name : 'Station',
	#superclass : 'Object',
	#instVars : [
		'readings'
	],
	#category : 'Refactor-Introduce-Parameter-Object',
	#package : 'Refactor-Introduce-Parameter-Object'
}

{ #category : 'instance creation' }
Station class >> readings: aCollection [

	^ self new setReadings: aCollection
]

{ #category : 'operating' }
Station >> readingsOutsideLow: low high: high [

	^ readings reject: [ :each | each isInRangeLow: low high: high ]
]

{ #category : 'private' }
Station >> setReadings: aCollection [

	readings := aCollection
]
