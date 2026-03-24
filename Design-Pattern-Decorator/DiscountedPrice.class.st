Class {
	#name : #DiscountedPrice,
	#superclass : #Object,
	#traits : 'TValue',
	#classTraits : 'TValue classTrait',
	#instVars : [
		'price',
		'discount'
	],
	#category : #'Design-Pattern-Decorator'
}

{ #category : #'instance creation' }
DiscountedPrice class >> price: aPrice discount: aNumber [

	^ self new price: aPrice discount: aNumber
]

{ #category : #'private - accessing' }
DiscountedPrice >> price: aPrice discount: aNumber [

	price := aPrice.
	discount := aNumber
]

{ #category : #evaluating }
DiscountedPrice >> value [

	^ price value - discount
]
