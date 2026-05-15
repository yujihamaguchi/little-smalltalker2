Class {
	#name : #ForecastDisplay,
	#superclass : #Observer,
	#instVars : [
		'output'
	],
	#category : #'Design-Pattern-Observer'
}

{ #category : #'instance creation' }
ForecastDisplay class >> subject: aSubject output: anOutput [
	
	| observer |
	observer := super subject: aSubject.
	observer output: anOutput.
	^ observer 
]

{ #category : #updating }
ForecastDisplay >> humidity: aNumber [

	output show: 'Forecast / humidity: ', aNumber asString
]

{ #category : #accessing }
ForecastDisplay >> output: anOutput [

	output := anOutput 
]

{ #category : #updating }
ForecastDisplay >> temperature: aNumber [

	output show: 'Forecast / temperature: ', aNumber asString
]
