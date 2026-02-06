Class {
	#name : #Switch,
	#superclass : #Object,
	#instVars : [
		'device'
	],
	#category : #'DesignPatterns-Bridge'
}

{ #category : #'instance creation' }
Switch class >> device: arg1 [

	^ self new device: arg1
]

{ #category : #accessing }
Switch >> device: arg1 [

	device := arg1
]

{ #category : #switching }
Switch >> turnOff [

	device powerOff
]

{ #category : #switching }
Switch >> turnOn [

	device powerOn
]
