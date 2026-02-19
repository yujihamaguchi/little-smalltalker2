Class {
	#name : #SliderSwitch,
	#superclass : #Switch,
	#category : #'Design-Pattern-Bridge'
}

{ #category : #processing }
SliderSwitch >> downBy: aNumber [

	device downBy: aNumber
]

{ #category : #switching }
SliderSwitch >> turnOn [

	super turnOn.
	device defaultOutput
]

{ #category : #processing }
SliderSwitch >> upBy: aNumber [

	device upBy: aNumber
]
