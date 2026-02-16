Class {
	#name : #Light,
	#superclass : #Device,
	#instVars : [
		'brightness'
	],
	#category : #'Design-Pattern-Bridge'
}

{ #category : #accessing }
Light >> brightness [ 

	^ brightness
]

{ #category : #modifying }
Light >> high [

	brightness := #bright
]

{ #category : #modifying }
Light >> low [

	brightness := #dim
]

{ #category : #modifying }
Light >> medium [

	brightness := #medium
]

{ #category : #modifying }
Light >> powerOff [ 

	super powerOff.
	brightness := nil
]
