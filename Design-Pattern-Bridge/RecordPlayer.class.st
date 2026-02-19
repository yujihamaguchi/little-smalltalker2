Class {
	#name : #RecordPlayer,
	#superclass : #Device,
	#traits : 'TOutputControllable',
	#classTraits : 'TOutputControllable classTrait',
	#instVars : [
		'volume'
	],
	#category : #'Design-Pattern-Bridge'
}

{ #category : #modifying }
RecordPlayer >> defaultOutput [

	volume := 50
]

{ #category : #processing }
RecordPlayer >> downBy: aNumber [

	volume := volume - aNumber
]

{ #category : #modifying }
RecordPlayer >> powerOff [

	super powerOff.
	volume := nil
]

{ #category : #processing }
RecordPlayer >> upBy: aNumber [

	volume := volume + aNumber
]

{ #category : #accessing }
RecordPlayer >> volume [

	^ volume
]
