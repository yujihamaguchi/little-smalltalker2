Class {
	#name : 'Person',
	#superclass : 'Object',
	#instVars : [
		'name',
		'officeAreaCode',
		'officeNumber'
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
	officeAreaCode := aCode.
	officeNumber := aNumber
]

{ #category : 'operating' }
Person >> telephoneNumber [

	^ '(', officeAreaCode, ') ', officeNumber
]
