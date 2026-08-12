Class {
	#name : 'PricedOrder',
	#superclass : 'Object',
	#instVars : [
		'quantity',
		'itemPrice'
	],
	#category : 'Refactor-Replace-Temp-With-Query',
	#package : 'Refactor-Replace-Temp-With-Query'
}

{ #category : 'instance creation' }
PricedOrder class >> quantity: aQuantity itemPrice: aPrice [

	^ self new quantity: aQuantity; itemPrice: aPrice; yourself
]

{ #category : 'operating' }
PricedOrder >> getPrice [

	| basePrice discountFactor |
	basePrice := quantity * itemPrice.
	discountFactor := basePrice > 1000 ifTrue: [ 95 ] ifFalse: [ 98 ].
	^ basePrice * discountFactor / 100
]

{ #category : 'accessing' }
PricedOrder >> itemPrice: aPrice [

	itemPrice := aPrice
]

{ #category : 'accessing' }
PricedOrder >> quantity: aQuantity [

	quantity := aQuantity
]
