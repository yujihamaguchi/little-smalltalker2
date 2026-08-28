Class {
	#name : 'TelephoneNumber2',
	#superclass : 'Object',
	#instVars : [
		'number'
	],
	#category : 'Refactor-Inline-Class',
	#package : 'Refactor-Inline-Class'
}

{ #category : 'instance creation' }
TelephoneNumber2 class >> number: aNumber [

	^ self new setNumber: aNumber
]

{ #category : 'accessing' }
TelephoneNumber2 >> number [

	^ number
]

{ #category : 'private' }
TelephoneNumber2 >> setNumber: aNumber [

	number := aNumber
]
