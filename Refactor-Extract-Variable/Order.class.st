Class {
	#name : 'Order',
	#superclass : 'Object',
	#instVars : [
		'quantity',
		'itemPrice'
	],
	#category : 'Refactor-Extract-Variable',
	#package : 'Refactor-Extract-Variable'
}

{ #category : 'instance creation' }
Order class >> quantity: aQuantity itemPrice: aPrice [

	^ self new setQuantity: aQuantity itemPrice: aPrice
]

{ #category : 'operating' }
Order >> price [

	^ (quantity * itemPrice) - ((0 max: quantity - 500) * itemPrice * 5 / 100) + ((quantity * itemPrice / 10) min: 100)
]

{ #category : 'private' }
Order >> setQuantity: aQuantity itemPrice: aPrice [

	quantity := aQuantity.
	itemPrice := aPrice
]
