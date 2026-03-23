Class {
	#name : #Box,
	#superclass : #Object,
	#traits : 'TPrice',
	#classTraits : 'TPrice classTrait',
	#instVars : [
		'children'
	],
	#category : #'Design-Pattern-Composite'
}

{ #category : #adding }
Box >> add: aChild [

	children add: aChild
]

{ #category : #initialize }
Box >> initialize [

	children := OrderedCollection new
]

{ #category : #processing }
Box >> price [

	^ children inject: 0 into: [ :acc :child | acc + child price ]
]
