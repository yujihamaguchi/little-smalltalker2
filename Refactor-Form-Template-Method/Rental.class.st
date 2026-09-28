Class {
	#name : 'Rental',
	#superclass : 'Object',
	#instVars : [
		'title',
		'charge'
	],
	#category : 'Refactor-Form-Template-Method',
	#package : 'Refactor-Form-Template-Method'
}

{ #category : 'instance creation' }
Rental class >> title: aTitle charge: aCharge [

	^ self new setTitle: aTitle charge: aCharge
]

{ #category : 'accessing' }
Rental >> charge [

	^ charge
]

{ #category : 'private' }
Rental >> setTitle: aTitle charge: aCharge [

	title := aTitle.
	charge := aCharge
]

{ #category : 'accessing' }
Rental >> title [

	^ title
]
