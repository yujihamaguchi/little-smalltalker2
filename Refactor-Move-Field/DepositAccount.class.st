Class {
	#name : 'DepositAccount',
	#superclass : 'Object',
	#instVars : [
		'product',
		'interestRate'
	],
	#category : 'Refactor-Move-Field',
	#package : 'Refactor-Move-Field'
}

{ #category : 'instance creation' }
DepositAccount class >> product: aProduct rate: aRate [

	^ self new setProduct: aProduct interestRate: aRate
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
DepositAccount >> setProduct: aProduct interestRate: aRate [

	product := aProduct.
	interestRate := aRate
]
