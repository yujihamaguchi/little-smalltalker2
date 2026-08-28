Class {
	#name : 'Worker',
	#superclass : 'Object',
	#instVars : [
		'type'
	],
	#category : 'Refactor-Replace-Type-Code-With-Subclasses',
	#package : 'Refactor-Replace-Type-Code-With-Subclasses'
}

{ #category : 'instance creation' }
Worker class >> type: aType [

	^ self new setType: aType
]

{ #category : 'operating' }
Worker >> monthlyPay [

	type = #engineer ifTrue: [ ^ 5000 ].
	type = #manager ifTrue: [ ^ 8000 ].
	^ self error: 'unknown type'
]

{ #category : 'private' }
Worker >> setType: aType [

	type := aType
]
