Class {
	#name : #Product,
	#superclass : #Object,
	#traits : 'TPrice',
	#classTraits : 'TPrice classTrait',
	#instVars : [
		'price'
	],
	#category : #'Design-Pattern-Composite'
}

{ #category : #'instance creation' }
Product class >> price: aNumber [

	^ self new price: aNumber
]

{ #category : #accessing }
Product >> price [

	^ price
]

{ #category : #accessing }
Product >> price: aNumber [

	price := aNumber
	
]
