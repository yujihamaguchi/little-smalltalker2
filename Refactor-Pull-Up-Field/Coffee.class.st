Class {
	#name : 'Coffee',
	#superclass : 'Beverage',
	#instVars : [
		'caffeine'
	],
	#category : 'Refactor-Pull-Up-Field',
	#package : 'Refactor-Pull-Up-Field'
}

{ #category : 'accessing' }
Coffee >> caffeine [

	^ caffeine
]

{ #category : 'private' }
Coffee >> setCaffeine: aValue [

	caffeine := aValue
]
