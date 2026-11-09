Class {
	#name : 'Company',
	#superclass : 'Object',
	#instVars : [
		'name',
		'ceo',
		'phone'
	],
	#category : 'Refactor-Remove-Middle-Man',
	#package : 'Refactor-Remove-Middle-Man'
}

{ #category : 'instance creation' }
Company class >> name: aName ceo: aCeo phone: aPhone [

	^ self new setName: aName ceo: aCeo phone: aPhone
]

{ #category : 'accessing' }
Company >> ceo [

	^ ceo
]

{ #category : 'accessing' }
Company >> name [

	^ name
]

{ #category : 'accessing' }
Company >> phone [

	^ phone
]

{ #category : 'private' }
Company >> setName: aName ceo: aCeo phone: aPhone [

	name := aName.
	ceo := aCeo.
	phone := aPhone
]
