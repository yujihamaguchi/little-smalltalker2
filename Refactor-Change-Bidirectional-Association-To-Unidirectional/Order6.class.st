Class {
	#name : 'Order6',
	#superclass : 'Object',
	#instVars : [
		'customer'
	],
	#category : 'Refactor-Change-Bidirectional-Association-To-Unidirectional',
	#package : 'Refactor-Change-Bidirectional-Association-To-Unidirectional'
}

{ #category : 'instance creation' }
Order6 class >> customer: aCustomer [

	^ self new setCustomer: aCustomer
]

{ #category : 'accessing' }
Order6 >> customer [

	^ customer
]

{ #category : 'private' }
Order6 >> setCustomer: aCustomer [

	customer := aCustomer
]
