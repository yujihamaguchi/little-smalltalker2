Class {
	#name : 'Contractor',
	#superclass : 'Object',
	#instVars : [
		'rate',
		'special'
	],
	#category : 'Refactor-Extract-Interface',
	#package : 'Refactor-Extract-Interface'
}

{ #category : 'instance creation' }
Contractor class >> rate: aRate special: aBoolean [

	^ self new setRate: aRate special: aBoolean
]

{ #category : 'accessing' }
Contractor >> hasSpecialSkill [

	^ special
]

{ #category : 'accessing' }
Contractor >> rate [

	^ rate
]

{ #category : 'private' }
Contractor >> setRate: aRate special: aBoolean [

	rate := aRate.
	special := aBoolean
]
