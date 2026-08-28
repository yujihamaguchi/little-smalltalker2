Class {
	#name : 'Site',
	#superclass : 'Object',
	#instVars : [
		'customer'
	],
	#category : 'Refactor-Introduce-Null-Object',
	#package : 'Refactor-Introduce-Null-Object'
}

{ #category : 'instance creation' }
Site class >> customer: aCustomer [

	^ self new setCustomer: aCustomer
]

{ #category : 'operating' }
Site >> customerName [

	customer isNil ifTrue: [ ^ 'occupant' ].
	^ customer name
]

{ #category : 'private' }
Site >> setCustomer: aCustomer [

	customer := aCustomer
]
