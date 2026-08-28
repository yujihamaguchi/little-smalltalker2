Class {
	#name : 'Order5',
	#superclass : 'Object',
	#instVars : [
		'customer'
	],
	#category : 'Refactor-Change-Unidirectional-Association-To-Bidirectional',
	#package : 'Refactor-Change-Unidirectional-Association-To-Bidirectional'
}

{ #category : 'instance creation' }
Order5 class >> customer: aCustomer [

	^ self new setCustomer: aCustomer
]

{ #category : 'accessing' }
Order5 >> customer [

	^ customer
]

{ #category : 'private' }
Order5 >> setCustomer: aCustomer [

	customer := aCustomer
]
