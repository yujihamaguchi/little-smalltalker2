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

	daysOverdrawn <= accountType freeDays ifTrue: [ ^ accountType flatFee ].
	^ accountType flatFee + ((daysOverdrawn - accountType freeDays) * accountType dailyRate)
]

{ #category : 'private' }
Account >> setAccountType: aType daysOverdrawn: aNumber [

	accountType := aType.
	daysOverdrawn := aNumber
]
