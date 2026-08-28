Class {
	#name : 'TemperaturePanel',
	#superclass : 'Object',
	#instVars : [
		'celsius'
	],
	#category : 'Refactor-Duplicate-Observed-Data',
	#package : 'Refactor-Duplicate-Observed-Data'
}

{ #category : 'instance creation' }
TemperaturePanel class >> celsius: aValue [

	^ self new setCelsius: aValue
]

{ #category : 'operating' }
TemperaturePanel >> fahrenheit [

	^ (celsius * 9 / 5) + 32
]

{ #category : 'private' }
TemperaturePanel >> setCelsius: aValue [

	celsius := aValue
]
