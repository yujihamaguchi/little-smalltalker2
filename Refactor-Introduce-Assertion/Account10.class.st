Class {
	#name : 'Account10',
	#superclass : 'Object',
	#instVars : [
		'balance'
	],
	#category : 'Refactor-Introduce-Assertion',
	#package : 'Refactor-Introduce-Assertion'
}

{ #category : 'instance creation' }
Account10 class >> balance: aBalance [

	^ self new setBalance: aBalance
]

{ #category : 'private' }
Account10 >> setBalance: aBalance [

	balance := aBalance
]

{ #category : 'operating' }
Account10 >> withdraw: amount [

	balance := balance - amount.
	^ balance
]
