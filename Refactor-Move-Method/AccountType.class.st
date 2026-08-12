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

	^ self new premium: aBoolean; yourself
]

{ #category : 'accessing' }
AccountType >> isPremium [

	^ premium
]

{ #category : 'accessing' }
AccountType >> premium: aBoolean [

	premium := aBoolean
]
