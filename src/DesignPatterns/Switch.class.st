Class {
	#name : #Switch,
	#superclass : #Object,
	#instVars : [
		'device'
	],
	#category : #'DesignPatterns-Bridge'
}

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
