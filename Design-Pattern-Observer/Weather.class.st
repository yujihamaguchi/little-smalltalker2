Class {
	#name : #Weather,
	#superclass : #Observable,
	#instVars : [
		'temperature',
		'humidity'
	],
	#category : #'Design-Pattern-Observer'
}

{ #category : #accessing }
Weather >> humidity [

	^ humidity
]

{ #category : #accessing }
Weather >> humidity: aNumber [

	humidity := aNumber.
	observers do: [ :each | each humidity: humidity ]
]

{ #category : #accessing }
Weather >> temperature [

	^ temperature
]

{ #category : #accessing }
Weather >> temperature: aNumber [

	temperature := aNumber.
	observers do: [ :each | each temperature: temperature  ]
]
