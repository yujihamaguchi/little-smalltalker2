Class {
	#name : 'Patient',
	#superclass : 'Object',
	#instVars : [
		'bloodGroup'
	],
	#category : 'Refactor-Replace-Type-Code-With-Class',
	#package : 'Refactor-Replace-Type-Code-With-Class'
}

{ #category : 'instance creation' }
Patient class >> bloodGroup: aGroup [

	^ self new setBloodGroup: aGroup
]

{ #category : 'accessing' }
Patient >> bloodGroup [

	^ bloodGroup
]

{ #category : 'operating' }
Patient >> canReceiveFrom: aDonor [

	bloodGroup = #AB ifTrue: [ ^ true ].
	^ aDonor bloodGroup = #O or: [ aDonor bloodGroup = bloodGroup ]
]

{ #category : 'private' }
Patient >> setBloodGroup: aGroup [

	bloodGroup := aGroup
]
