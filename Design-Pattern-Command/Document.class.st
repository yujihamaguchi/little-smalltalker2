Class {
	#name : #Document,
	#superclass : #Object,
	#instVars : [
		'contents'
	],
	#category : #'Design-Pattern-Command'
}

{ #category : #accessing }
Document >> contents [

	^ contents
]

{ #category : #accessing }
Document >> contents: someContents [

	contents := someContents 
]
