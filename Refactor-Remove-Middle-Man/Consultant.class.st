Class {
	#name : 'Consultant',
	#superclass : 'Object',
	#instVars : [
		'company'
	],
	#category : 'Refactor-Remove-Middle-Man',
	#package : 'Refactor-Remove-Middle-Man'
}

{ #category : 'instance creation' }
Consultant class >> company: aCompany [

	^ self new setCompany: aCompany
]

{ #category : 'operating' }
Consultant >> ceo [

	^ company ceo
]

{ #category : 'accessing' }
Consultant >> company [

	^ company
]

{ #category : 'private' }
Consultant >> setCompany: aCompany [

	company := aCompany
]
