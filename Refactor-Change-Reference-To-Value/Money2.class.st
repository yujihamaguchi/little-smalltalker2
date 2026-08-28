Class {
	#name : 'Money2',
	#superclass : 'Object',
	#instVars : [
		'amount'
	],
	#category : 'Refactor-Change-Reference-To-Value',
	#package : 'Refactor-Change-Reference-To-Value'
}

{ #category : 'instance creation' }
Money2 class >> amount: aValue [

	^ self new setAmount: aValue
]

{ #category : 'accessing' }
Money2 >> amount [

	^ amount
]

{ #category : 'private' }
Money2 >> setAmount: aValue [

	amount := aValue
]
