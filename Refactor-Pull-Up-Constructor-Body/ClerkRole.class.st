Class {
	#name : 'ClerkRole',
	#superclass : 'StaffMember',
	#category : 'Refactor-Pull-Up-Constructor-Body',
	#package : 'Refactor-Pull-Up-Constructor-Body'
}

{ #category : 'instance creation' }
ClerkRole class >> named: aName [

	^ self new setNamed: aName
]

{ #category : 'private' }
ClerkRole >> setNamed: aName [

	name := aName
]
