Class {
	#name : 'DepositProduct',
	#superclass : 'Object',
	#instVars : [
		'type'
	],
	#category : 'Refactor-Move-Field',
	#package : 'Refactor-Move-Field'
}

{ #category : 'instance creation' }
DepositProduct class >> type: aSymbol [

	^ self new setType: aSymbol
]

{ #category : 'private' }
DepositProduct >> setType: aSymbol [

	type := aSymbol
]

{ #category : 'accessing' }
DepositProduct >> type [

	^ type
]
