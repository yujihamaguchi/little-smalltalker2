Class {
	#name : 'JobItem',
	#superclass : 'Object',
	#instVars : [
		'unitPrice',
		'quantity',
		'labor'
	],
	#category : 'Refactor-Extract-Subclass',
	#package : 'Refactor-Extract-Subclass'
}

{ #category : 'instance creation' }
JobItem class >> unitPrice: aPrice quantity: aQuantity labor: aBoolean [

	^ self new setUnitPrice: aPrice quantity: aQuantity labor: aBoolean
]

{ #category : 'private' }
JobItem >> setUnitPrice: aPrice quantity: aQuantity labor: aBoolean [

	unitPrice := aPrice.
	quantity := aQuantity.
	labor := aBoolean
]

{ #category : 'operating' }
JobItem >> totalPrice [

	labor ifTrue: [ ^ 100 * quantity ].
	^ unitPrice * quantity
]
