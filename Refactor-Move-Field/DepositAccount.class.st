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

	^ self new accountType: aType; interestRate: aRate; yourself
]

{ #category : 'accessing' }
DepositAccount >> accountType: aType [

	accountType := aType
]

{ #category : 'operating' }
DepositAccount >> interestForAmount: anAmount [

	^ interestRate * anAmount / 100
]

{ #category : 'accessing' }
DepositAccount >> interestRate [

	^ interestRate
]

{ #category : 'accessing' }
DepositAccount >> interestRate: aRate [

	interestRate := aRate
]
