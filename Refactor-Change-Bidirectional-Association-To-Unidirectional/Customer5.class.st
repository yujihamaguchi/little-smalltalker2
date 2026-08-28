Class {
	#name : 'Customer5',
	#superclass : 'Object',
	#instVars : [
		'name',
		'orders'
	],
	#category : 'Refactor-Change-Bidirectional-Association-To-Unidirectional',
	#package : 'Refactor-Change-Bidirectional-Association-To-Unidirectional'
}

{ #category : 'instance creation' }
Customer5 class >> name: aName [

	^ self new setName: aName
]

{ #category : 'accessing' }
Customer5 >> addOrder: anOrder [

	orders add: anOrder
]

{ #category : 'accessing' }
Customer5 >> name [

	^ name
]

{ #category : 'accessing' }
Customer5 >> orderCount [

	^ orders size
]

{ #category : 'private' }
Customer5 >> setName: aName [

	name := aName.
	orders := OrderedCollection new
]
