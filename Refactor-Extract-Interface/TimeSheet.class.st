Class {
	#name : 'TimeSheet',
	#superclass : 'Object',
	#category : 'Refactor-Extract-Interface',
	#package : 'Refactor-Extract-Interface'
}

{ #category : 'operating' }
TimeSheet >> chargeFor: aWorker days: aNumber [

	| multiplier |
	multiplier := aWorker hasSpecialSkill ifTrue: [ 2 ] ifFalse: [ 1 ].
	^ aNumber * aWorker rate * multiplier
]
