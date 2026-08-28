Class {
	#name : 'Reading',
	#superclass : 'Object',
	#instVars : [
		'value'
	],
	#category : 'Refactor-Introduce-Parameter-Object',
	#package : 'Refactor-Introduce-Parameter-Object'
}

{ #category : 'instance creation' }
Reading class >> value: aValue [

	^ self new setValue: aValue
]

{ #category : 'operating' }
Reading >> isInRangeLow: low high: high [

	^ value between: low and: high
]

{ #category : 'private' }
Reading >> setValue: aValue [

	value := aValue
]
