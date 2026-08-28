Class {
	#name : 'Room2',
	#superclass : 'Object',
	#instVars : [
		'temperature'
	],
	#category : 'Refactor-Preserve-Whole-Object',
	#package : 'Refactor-Preserve-Whole-Object'
}

{ #category : 'instance creation' }
Room2 class >> temperature: aTemp [

	^ self new setTemperature: aTemp
]

{ #category : 'private' }
Room2 >> setTemperature: aTemp [

	temperature := aTemp
]

{ #category : 'operating' }
Room2 >> withinRangeLow: aLow high: aHigh [

	^ (temperature >= aLow) and: [ temperature <= aHigh ]
]
