Class {
	#name : 'DepositAccount',
	#superclass : 'Object',
	#instVars : [
		'accountType',
		'interestRate'
	],
	#category : 'Refactor-Move-Field',
	#package : 'Refactor-Move-Field'
}

{ #category : 'instance creation' }
DepositAccount class >> type: aType rate: aRate [

	^ self new setAccountType: aType interestRate: aRate
]

{ #category : 'operating' }
DepositAccount >> interestForAmount: anAmount [

	^ interestRate * anAmount / 100
]

{ #category : 'accessing' }
DepositAccount >> interestRate [

	^ interestRate
]

{ #category : 'private' }
DepositAccount >> setAccountType: aType interestRate: aRate [

	accountType := aType.
	interestRate := aRate
]
