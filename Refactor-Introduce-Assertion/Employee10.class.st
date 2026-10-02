Class {
	#name : 'Employee10',
	#superclass : 'Object',
	#instVars : [
		'expenseLimit',
		'primaryProject'
	],
	#category : 'Refactor-Introduce-Assertion',
	#package : 'Refactor-Introduce-Assertion'
}

{ #category : 'instance creation' }
Employee10 class >> expenseLimit: aNumber [

	^ self new setExpenseLimit: aNumber
]

{ #category : 'instance creation' }
Employee10 class >> primaryProject: aProject [

	^ self new setPrimaryProject: aProject
]

{ #category : 'operating' }
Employee10 >> expenseLimit [

	^ expenseLimit ifNil: [ primaryProject memberExpenseLimit ]
]

{ #category : 'private' }
Employee10 >> setExpenseLimit: aNumber [

	expenseLimit := aNumber
]

{ #category : 'private' }
Employee10 >> setPrimaryProject: aProject [

	primaryProject := aProject
]
