Class {
	#name : #BasePrice,
	#superclass : #Object,
	#traits : 'TValue',
	#classTraits : 'TValue classTrait',
	#instVars : [
		'value'
	],
	#category : #'Design-Pattern-Decorator'
}

{ #category : #'instance creation' }
BasePrice class >> value: aNumber [

	^ self new value: aNumber
]

{ #category : #accessing }
BasePrice >> value [

	^ value
]

{ #category : #'private accessing' }
BasePrice >> value: aNumber [

	value := aNumber

	
]
