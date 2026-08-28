Class {
	#name : 'Company',
	#superclass : 'Object',
	#instVars : [
		'ceo'
	],
	#category : 'Refactor-Remove-Middle-Man',
	#package : 'Refactor-Remove-Middle-Man'
}

{ #category : 'instance creation' }
Company class >> ceo: aCeo [

	^ self new setCeo: aCeo
]

{ #category : 'accessing' }
Company >> ceo [

	^ ceo
]

{ #category : 'private' }
Company >> setCeo: aCeo [

	ceo := aCeo
]
