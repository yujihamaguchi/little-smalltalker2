Class {
	#name : 'ManagerRole',
	#superclass : 'StaffMember',
	#instVars : [
		'bonus'
	],
	#category : 'Refactor-Pull-Up-Constructor-Body',
	#package : 'Refactor-Pull-Up-Constructor-Body'
}

{ #category : 'instance creation' }
ManagerRole class >> named: aName bonus: aBonus [

	^ self new setNamed: aName bonus: aBonus
]

{ #category : 'private' }
ManagerRole >> setNamed: aName bonus: aBonus [

	name := aName.
	bonus := aBonus
]
