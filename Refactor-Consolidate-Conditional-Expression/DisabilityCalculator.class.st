Class {
	#name : 'DisabilityCalculator',
	#superclass : 'Object',
	#instVars : [
		'seniority',
		'monthsDisabled',
		'partTime'
	],
	#category : 'Refactor-Consolidate-Conditional-Expression',
	#package : 'Refactor-Consolidate-Conditional-Expression'
}

{ #category : 'instance creation' }
DisabilityCalculator class >> seniority: aSeniority monthsDisabled: aMonths partTime: aBoolean [

	^ self new setSeniority: aSeniority monthsDisabled: aMonths partTime: aBoolean
]

{ #category : 'operating' }
DisabilityCalculator >> disabilityAmount [

	seniority < 2 ifTrue: [ ^ 0 ].
	monthsDisabled > 12 ifTrue: [ ^ 0 ].
	partTime ifTrue: [ ^ 0 ].
	^ 500
]

{ #category : 'private' }
DisabilityCalculator >> setSeniority: aSeniority monthsDisabled: aMonths partTime: aBoolean [

	seniority := aSeniority.
	monthsDisabled := aMonths.
	partTime := aBoolean
]
