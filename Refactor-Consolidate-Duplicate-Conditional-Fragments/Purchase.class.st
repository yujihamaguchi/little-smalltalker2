Class {
	#name : 'Purchase',
	#superclass : 'Object',
	#instVars : [
		'price',
		'special'
	],
	#category : 'Refactor-Consolidate-Duplicate-Conditional-Fragments',
	#package : 'Refactor-Consolidate-Duplicate-Conditional-Fragments'
}

{ #category : 'instance creation' }
Purchase class >> price: aPrice special: aBoolean [

	^ self new setPrice: aPrice special: aBoolean
]

{ #category : 'private' }
Purchase >> setPrice: aPrice special: aBoolean [

	price := aPrice.
	special := aBoolean
]

{ #category : 'operating' }
Purchase >> total [

	special
		ifTrue: [ ^ (price * 90 / 100) + 5 ]
		ifFalse: [ ^ (price * 95 / 100) + 5 ]
]
