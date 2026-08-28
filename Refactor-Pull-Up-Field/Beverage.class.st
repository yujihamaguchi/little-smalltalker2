Class {
	#name : 'Beverage',
	#superclass : 'Object',
	#category : 'Refactor-Pull-Up-Field',
	#package : 'Refactor-Pull-Up-Field'
}

{ #category : 'instance creation' }
Beverage class >> caffeine: aValue [

	^ self new setCaffeine: aValue
]
