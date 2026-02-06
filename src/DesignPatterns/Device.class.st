Class {
	#name : #Device,
	#superclass : #Object,
	#instVars : [
		'isPowerOn'
	],
	#category : #'DesignPatterns-Bridge'
}

{ #category : #initialization }
Device >> initialize [ 

	super initialize.
	isPowerOn := false
]

{ #category : #accessing }
Device >> isPowerOff [

	^ isPowerOn not
]

{ #category : #accessing }
Device >> isPowerOn [

	^ isPowerOn 
]

{ #category : #commands }
Device >> powerOff [

	isPowerOn := false
]

{ #category : #commands }
Device >> powerOn [

	isPowerOn := true
]
