Class {
	#name : 'Person',
	#superclass : 'Object',
	#instVars : [
		'name',
		'areaCode',
		'number'
	],
	#category : 'Refactor-Extract-Class',
	#package : 'Refactor-Extract-Class'
}

{ #category : 'instance creation' }
Person class >> name: aName areaCode: aCode number: aNumber [

	^ self new setName: aName areaCode: aCode number: aNumber
]

{ #category : 'accessing' }
Person >> name [

	^ name
]

{ #category : 'private' }
Person >> setName: aName areaCode: aCode number: aNumber [

	name := aName.
	areaCode := aCode.
	number := aNumber
]

{ #category : 'operating' }
Person >> telephoneNumber [

	^ '(', areaCode, ') ', number
]
