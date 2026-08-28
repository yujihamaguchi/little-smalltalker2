Class {
	#name : 'PriceList',
	#superclass : 'Object',
	#category : 'Refactor-Introduce-Local-Extension',
	#package : 'Refactor-Introduce-Local-Extension'
}

{ #category : 'operating' }
PriceList >> centsOf: cents [

	^ cents \\ 100
]

{ #category : 'operating' }
PriceList >> dollarsOf: cents [

	^ cents // 100
]
