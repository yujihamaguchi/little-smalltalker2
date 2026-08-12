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

	^ self new name: aName; officeAreaCode: aCode; officeNumber: aNumber; yourself
]

{ #category : 'accessing' }
Person >> name [

	^ name
]

{ #category : 'accessing' }
Person >> name: aName [

	name := aName
]

{ #category : 'accessing' }
Person >> officeAreaCode: aCode [

	officeAreaCode := aCode
]

{ #category : 'accessing' }
Person >> officeNumber: aNumber [

	officeNumber := aNumber
]

{ #category : 'operating' }
Person >> telephoneNumber [

	^ '(', officeAreaCode, ') ', officeNumber
]
