Class {
	#name : 'Booking',
	#superclass : 'Object',
	#instVars : [
		'customer'
	],
	#category : 'Refactor-Replace-Data-Value-With-Object',
	#package : 'Refactor-Replace-Data-Value-With-Object'
}

{ #category : 'instance creation' }
Booking class >> customer: aCustomer [

	^ self new setCustomer: aCustomer
]

{ #category : 'operating' }
Booking >> customerName [

	^ customer
]

{ #category : 'private' }
Booking >> setCustomer: aCustomer [

	customer := aCustomer
]
