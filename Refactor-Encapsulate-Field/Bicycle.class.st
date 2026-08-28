Class {
	#name : 'Bicycle',
	#superclass : 'Object',
	#instVars : [
		'gear'
	],
	#category : 'Refactor-Encapsulate-Field',
	#package : 'Refactor-Encapsulate-Field'
}

{ #category : 'instance creation' }
Bicycle class >> gear: aGear [

	^ self new setGear: aGear
]

{ #category : 'operating' }
Bicycle >> report [

	^ 'gear: ', gear printString
]

{ #category : 'private' }
Bicycle >> setGear: aGear [

	gear := aGear
]
