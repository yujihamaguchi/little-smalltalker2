Class {
	#name : #Editor,
	#superclass : #Object,
	#instVars : [
		'contents',
		'clipboard'
	],
	#category : #'Design-Pattern-Command'
}

{ #category : #accessing }
Editor >> clipboard [

	^ clipboard
]

{ #category : #accessing }
Editor >> clipboard: someContents [

	clipboard := someContents
]

{ #category : #accessing }
Editor >> contents [

	^ contents
]

{ #category : #accessing }
Editor >> contents: someContents [

	contents := someContents 
]
