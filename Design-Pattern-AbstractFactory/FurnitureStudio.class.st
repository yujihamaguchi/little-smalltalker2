Class {
	#name : #FurnitureStudio,
	#superclass : #Object,
	#instVars : [
		'factory'
	],
	#category : #'Design-Pattern-AbstractFactory'
}

{ #category : #'instance creation' }
FurnitureStudio class >> factory: aFactory [

	^ self new factory: aFactory
]

{ #category : #operations }
FurnitureStudio >> createTableSet [

	| tableSet |
	tableSet := TableSet new.
	tableSet description: factory style, ' style furniture set.'.
	tableSet chair: factory createChair.
	tableSet table: factory createTable.
	^ tableSet
]

{ #category : #accessing }
FurnitureStudio >> factory: aFactory [

	factory := aFactory
]
