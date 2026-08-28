Class {
	#name : 'Stack3',
	#superclass : 'Object',
	#instVars : [
		'items'
	],
	#category : 'Refactor-Replace-Exception-With-Test',
	#package : 'Refactor-Replace-Exception-With-Test'
}

{ #category : 'initialization' }
Stack3 >> initialize [

	items := OrderedCollection new
]

{ #category : 'operating' }
Stack3 >> push: anObject [

	items addLast: anObject
]

{ #category : 'operating' }
Stack3 >> topOr: default [

	[ ^ items last ] on: Error do: [ :e | ^ default ]
]
