Class {
	#name : #TableSet,
	#superclass : #Object,
	#instVars : [
		'chair',
		'table',
		'description'
	],
	#category : #'Design-Pattern-AbstractFactory'
}

{ #category : #accessing }
TableSet >> chair [

	^ chair
]

{ #category : #accessing }
TableSet >> chair: aChair [

	chair := aChair
]

{ #category : #accessing }
TableSet >> description [

	^ description 
]

{ #category : #accessing }
TableSet >> description: aString [

	description := aString
]

{ #category : #accessing }
TableSet >> table [

	^ table
]

{ #category : #accessing }
TableSet >> table: aTable [

	table := aTable
]
