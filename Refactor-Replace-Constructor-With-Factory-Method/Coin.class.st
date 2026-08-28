Class {
	#name : 'Coin',
	#superclass : 'Object',
	#instVars : [
		'value'
	],
	#category : 'Refactor-Replace-Constructor-With-Factory-Method',
	#package : 'Refactor-Replace-Constructor-With-Factory-Method'
}

{ #category : 'accessing' }
Coin >> value [

	^ value
]

{ #category : 'accessing' }
Coin >> value: aValue [

	value := aValue
]
