Class {
	#name : 'AccountType',
	#superclass : 'Object',
	#instVars : [
		'premium'
	],
	#category : 'Refactor-Move-Method',
	#package : 'Refactor-Move-Method'
}

{ #category : 'instance creation' }
AccountType class >> premium: aBoolean [

	^ self new setPremium: aBoolean
]

{ #category : 'accessing' }
AccountType >> isPremium [

	^ premium
]

{ #category : 'private' }
AccountType >> setPremium: aBoolean [

	premium := aBoolean
]
