Class {
	#name : #Fan,
	#superclass : #Device,
	#traits : 'TTriLevelSwitchable + TOutputControllable',
	#classTraits : 'TTriLevelSwitchable classTrait + TOutputControllable classTrait',
	#instVars : [
		'speed'
	],
	#category : #'Design-Pattern-Bridge'
}

{ #category : #modifying }
Fan >> defaultOutput [

	speed := 50
]

{ #category : #processing }
Fan >> downBy: aNumber [

	speed := speed - aNumber
]

{ #category : #modifying }
Fan >> high [

	speed := #max
]

{ #category : #modifying }
Fan >> low [

	speed := #min
]

{ #category : #modifying }
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

{ #category : #processing }
Fan >> upBy: aNumber [

	speed := speed + aNumber
]
