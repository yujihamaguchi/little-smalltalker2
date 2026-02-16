Class {
	#name : #Device,
	#superclass : #Object,
	#instVars : [
		'isPowerOn'
	],
	#category : #'Design-Pattern-Bridge'
}

{ #category : #initialization }
Device >> initialize [ 

	super initialize.
	isPowerOn := false.
	^ self
]

{ #category : #testing }
Device >> isPowerOn [ 

	^ isPowerOn
]

{ #category : #modifying }
Device >> powerOff [

	isPowerOn := false
]

{ #category : #modifying }
Device >> powerOn [

	isPowerOn := true
]
