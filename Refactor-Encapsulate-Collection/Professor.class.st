Class {
	#name : 'Professor',
	#superclass : 'Object',
	#instVars : [
		'courses'
	],
	#category : 'Refactor-Encapsulate-Collection',
	#package : 'Refactor-Encapsulate-Collection'
}

{ #category : 'accessing' }
Professor >> courses [

	^ courses
]

{ #category : 'initialization' }
Professor >> initialize [

	courses := OrderedCollection new
]
