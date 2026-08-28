Class {
	#name : 'BankAccount2',
	#superclass : 'Object',
	#instVars : [
		'interestRate'
	],
	#category : 'Refactor-Push-Down-Field',
	#package : 'Refactor-Push-Down-Field'
}

{ #category : 'instance creation' }
BankAccount2 class >> withRate: aRate [

	^ self new setInterestRate: aRate
]

{ #category : 'private' }
BankAccount2 >> setInterestRate: aRate [

	interestRate := aRate
]
