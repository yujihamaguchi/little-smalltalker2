Class {
	#name : 'Account',
	#superclass : 'Object',
	#instVars : [
		'accountType',
		'daysOverdrawn'
	],
	#category : 'Refactor-Move-Method',
	#package : 'Refactor-Move-Method'
}

{ #category : 'instance creation' }
Account class >> type: aType daysOverdrawn: aNumber [

	^ self new accountType: aType; daysOverdrawn: aNumber; yourself
]

{ #category : 'accessing' }
Account >> accountType: aType [

	accountType := aType
]

{ #category : 'accessing' }
Account >> daysOverdrawn: aNumber [

	daysOverdrawn := aNumber
]

{ #category : 'operating' }
Account >> overdraftCharge [

	^ accountType isPremium
		ifTrue: [ daysOverdrawn > 7 ifTrue: [ 10 + ((daysOverdrawn - 7) * 2) ] ifFalse: [ 10 ] ]
		ifFalse: [ daysOverdrawn * 2 ]
]
