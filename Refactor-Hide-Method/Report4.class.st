Class {
	#name : 'Report4',
	#superclass : 'Object',
	#instVars : [
		'title'
	],
	#category : 'Refactor-Hide-Method',
	#package : 'Refactor-Hide-Method'
}

{ #category : 'instance creation' }
Report4 class >> title: aTitle [

	^ self new setTitle: aTitle
]

{ #category : 'operating' }
Report4 >> decorate: aString [

	^ '*** ', aString, ' ***'
]

{ #category : 'operating' }
Report4 >> render [

	^ self decorate: title
]

{ #category : 'private' }
Report4 >> setTitle: aTitle [

	title := aTitle
]
