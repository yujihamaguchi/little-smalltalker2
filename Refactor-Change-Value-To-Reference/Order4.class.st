Class {
	#name : 'Order4',
	#superclass : 'Object',
	#instVars : [
		'customer'
	],
	#category : 'Refactor-Change-Value-To-Reference',
	#package : 'Refactor-Change-Value-To-Reference'
}

{ #category : 'instance creation' }
Order4 class >> named: aName [

	^ self new setCustomer: (Customer3 named: aName)
]

{ #category : 'accessing' }
Order4 >> customer [

	^ customer
]

{ #category : 'private' }
Order4 >> setCustomer: aCustomer [

	customer := aCustomer
]
