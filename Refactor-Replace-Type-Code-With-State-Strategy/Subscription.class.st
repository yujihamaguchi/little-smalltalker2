Class {
	#name : 'Subscription',
	#superclass : 'Object',
	#instVars : [
		'level'
	],
	#category : 'Refactor-Replace-Type-Code-With-State-Strategy',
	#package : 'Refactor-Replace-Type-Code-With-State-Strategy'
}

{ #category : 'instance creation' }
Subscription class >> level: aLevel [

	^ self new setLevel: aLevel
]

{ #category : 'accessing' }
Subscription >> changeLevel: aLevel [

	level := aLevel
]

{ #category : 'operating' }
Subscription >> monthlyFee [

	level = #free ifTrue: [ ^ 0 ].
	level = #pro ifTrue: [ ^ 10 ].
	^ self error: 'unknown level'
]

{ #category : 'private' }
Subscription >> setLevel: aLevel [

	level := aLevel
]
