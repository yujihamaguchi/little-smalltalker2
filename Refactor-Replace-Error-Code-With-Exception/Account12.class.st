Class {
	#name : 'Account12',
	#superclass : 'Object',
	#instVars : [
		'balance'
	],
	#category : 'Refactor-Replace-Error-Code-With-Exception',
	#package : 'Refactor-Replace-Error-Code-With-Exception'
}

{ #category : 'instance creation' }
Account12 class >> balance: aBalance [

	^ self new setBalance: aBalance
]

{ #category : 'private' }
Account12 >> setBalance: aBalance [

	balance := aBalance
]

{ #category : 'operating' }
Account12 >> withdraw: amount [

	amount > balance ifTrue: [ ^ -1 ].
	balance := balance - amount.
	^ balance
]
