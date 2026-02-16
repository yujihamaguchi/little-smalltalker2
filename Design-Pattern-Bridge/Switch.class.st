Class {
	#name : #Switch,
	#superclass : #Object,
	#instVars : [
		'device'
	],
	#category : #'Design-Pattern-Bridge'
}

{ #category : #'instance creation' }
Switch class >> device: aDevice [

	^ self new device: aDevice
]

{ #category : #accessing }
Switch >> device: aDevice [

	device := aDevice 
]

{ #category : #switching }
Switch >> turnOff [ 

	device powerOff
]

{ #category : #switching }
Switch >> turnOn [ 

	device powerOn
]
