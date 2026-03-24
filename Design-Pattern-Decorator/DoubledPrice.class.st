Class {
	#name : #DoubledPrice,
	#superclass : #Object,
	#traits : 'TValue',
	#classTraits : 'TValue classTrait',
	#instVars : [
		'price'
	],
	#category : #'Design-Pattern-Decorator'
}

{ #category : #'instance creation' }
DoubledPrice class >> price: aPrice [

	^ self new price: aPrice
]

{ #category : #accessing }
DoubledPrice >> price: aPrice [

	price := aPrice
]

{ #category : #evaluating }
DoubledPrice >> value [

	^ (price value) * 2
]
