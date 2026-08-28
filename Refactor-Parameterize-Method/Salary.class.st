Class {
	#name : 'Salary',
	#superclass : 'Object',
	#instVars : [
		'amount'
	],
	#category : 'Refactor-Parameterize-Method',
	#package : 'Refactor-Parameterize-Method'
}

{ #category : 'instance creation' }
Salary class >> amount: aValue [

	^ self new setAmount: aValue
]

{ #category : 'operating' }
Salary >> fivePercentRaise [

	^ amount * 105 / 100
]

{ #category : 'private' }
Salary >> setAmount: aValue [

	amount := aValue
]

{ #category : 'operating' }
Salary >> tenPercentRaise [

	^ amount * 110 / 100
]
