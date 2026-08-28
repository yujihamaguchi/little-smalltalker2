Class {
	#name : 'Order7',
	#superclass : 'Object',
	#instVars : [
		'quantity',
		'itemPrice'
	],
	#category : 'Refactor-Replace-Parameter-With-Method-Call',
	#package : 'Refactor-Replace-Parameter-With-Method-Call'
}

{ #category : 'instance creation' }
Order7 class >> quantity: aQuantity itemPrice: aPrice [

	^ self new setQuantity: aQuantity itemPrice: aPrice
]

{ #category : 'operating' }
Order7 >> basePrice [

	^ quantity * itemPrice
]

{ #category : 'operating' }
Order7 >> discountLevel [

	^ 10
]

{ #category : 'operating' }
Order7 >> finalPrice [

	^ self finalPriceWithBase: self basePrice discount: self discountLevel
]

{ #category : 'operating' }
Order7 >> finalPriceWithBase: base discount: aDiscount [

	^ base - aDiscount
]

{ #category : 'private' }
Order7 >> setQuantity: aQuantity itemPrice: aPrice [

	quantity := aQuantity.
	itemPrice := aPrice
]
