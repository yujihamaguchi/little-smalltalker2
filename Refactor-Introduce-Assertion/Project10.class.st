Class {
	#name : 'Project10',
	#superclass : 'Object',
	#instVars : [
		'memberExpenseLimit'
	],
	#category : 'Refactor-Introduce-Assertion',
	#package : 'Refactor-Introduce-Assertion'
}

{ #category : 'instance creation' }
Project10 class >> memberExpenseLimit: aNumber [

	^ self new setMemberExpenseLimit: aNumber
]

{ #category : 'accessing' }
Project10 >> memberExpenseLimit [

	^ memberExpenseLimit
]

{ #category : 'private' }
Project10 >> setMemberExpenseLimit: aNumber [

	memberExpenseLimit := aNumber
]
