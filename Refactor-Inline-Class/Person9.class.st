Class {
	#name : 'Person9',
	#superclass : 'Object',
	#instVars : [
		'telephone'
	],
	#category : 'Refactor-Inline-Class',
	#package : 'Refactor-Inline-Class'
}

{ #category : 'instance creation' }
Person9 class >> number: aNumber [

	^ self new setTelephone: (TelephoneNumber2 number: aNumber)
]

{ #category : 'operating' }
Person9 >> phoneNumber [

	^ telephone number
]

{ #category : 'private' }
Person9 >> setTelephone: aTelephone [

	telephone := aTelephone
]
