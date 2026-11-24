Class {
	#name : 'Shopper',
	#superclass : 'Object',
	#instVars : [
		'budget'
	],
	#category : 'Refactor-Remove-Control-Flag',
	#package : 'Refactor-Remove-Control-Flag'
}

{ #category : 'instance creation' }
Shopper class >> budget: aNumber [

	^ self new setBudget: aNumber
]

{ #category : 'operating' }
Shopper >> buyFrom: aList [

	| total bought overBudget |
	total := 0.
	bought := OrderedCollection new.
	overBudget := false.
	aList do: [ :each |
		overBudget ifFalse: [
			total + each value > budget
				ifTrue: [ overBudget := true ]
				ifFalse: [
					bought add: each key.
					total := total + each value ] ] ].
	^ bought
]

{ #category : 'private' }
Shopper >> setBudget: aNumber [

	budget := aNumber
]
