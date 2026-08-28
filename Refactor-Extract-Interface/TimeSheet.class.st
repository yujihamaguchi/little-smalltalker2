Class {
	#name : 'TimeSheet',
	#superclass : 'Object',
	#category : 'Refactor-Extract-Interface',
	#package : 'Refactor-Extract-Interface'
}

{ #category : 'operating' }
TimeSheet >> chargeFor: aContractor days: aNumber [

	^ aNumber * aContractor rate * (aContractor hasSpecialSkill ifTrue: [ 2 ] ifFalse: [ 1 ])
]
