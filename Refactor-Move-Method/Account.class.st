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

	^ self new setAccountType: aType daysOverdrawn: aNumber
]

{ #category : 'operating' }
Account >> overdraftCharge [

	^ accountType isPremium
		ifTrue: [ daysOverdrawn > 7 ifTrue: [ 10 + ((daysOverdrawn - 7) * 2) ] ifFalse: [ 10 ] ]
		ifFalse: [ daysOverdrawn * 2 ]
]

{ #category : 'private' }
Account >> setAccountType: aType daysOverdrawn: aNumber [

	accountType := aType.
	daysOverdrawn := aNumber
]
