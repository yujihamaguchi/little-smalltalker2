Class {
	#name : 'Cart',
	#superclass : 'Object',
	#instVars : [
		'amount'
	],
	#category : 'Refactor-Inline-Temp',
	#package : 'Refactor-Inline-Temp'
}

{ #category : 'instance creation' }
Cart class >> amount: aValue [

	^ self new setAmount: aValue
]

{ #category : 'operating' }
Cart >> isExpensive [

	| basePrice |
	basePrice := self total.
	^ basePrice > 100
]

{ #category : 'private' }
Cart >> setAmount: aValue [

	amount := aValue
]

{ #category : 'accessing' }
Cart >> total [

	^ amount
]
