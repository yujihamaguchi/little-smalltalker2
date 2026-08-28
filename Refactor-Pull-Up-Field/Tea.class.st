Class {
	#name : 'Tea',
	#superclass : 'Beverage',
	#instVars : [
		'caffeine'
	],
	#category : 'Refactor-Pull-Up-Field',
	#package : 'Refactor-Pull-Up-Field'
}

{ #category : 'accessing' }
Tea >> caffeine [

	^ caffeine
]

{ #category : 'private' }
Tea >> setCaffeine: aValue [

	caffeine := aValue
]
