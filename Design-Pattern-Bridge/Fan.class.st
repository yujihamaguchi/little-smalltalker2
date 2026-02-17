Class {
	#name : #Fan,
	#superclass : #Device,
	#traits : 'TTriLevelSwitchable',
	#classTraits : 'TTriLevelSwitchable classTrait',
	#instVars : [
		'speed'
	],
	#category : #'Design-Pattern-Bridge'
}

{ #category : #processing }
Fan >> high [

	speed := #max
]

{ #category : #processing }
Fan >> low [

	speed := #min
]

{ #category : #processing }
Fan >> medium [

	speed := #mid
]

{ #category : #modifying }
Fan >> powerOff [

	super powerOff.
	speed := nil
]

{ #category : #accessing }
Fan >> speed [

	^ speed
]
