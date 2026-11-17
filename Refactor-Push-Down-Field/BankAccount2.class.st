Class {
	#name : 'BankAccount2',
	#superclass : 'Object',
	#instVars : [
		'number',
		'interestRate'
	],
	#category : 'Refactor-Push-Down-Field',
	#package : 'Refactor-Push-Down-Field'
}

{ #category : 'instance creation' }
BankAccount2 class >> number: aNumber rate: aRate [

	^ self new setNumber: aNumber interestRate: aRate
]

{ #category : 'accessing' }
BankAccount2 >> number [

	^ number
]

{ #category : 'private' }
BankAccount2 >> setNumber: aNumber interestRate: aRate [

	number := aNumber.
	interestRate := aRate
]
