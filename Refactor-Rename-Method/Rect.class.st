Class {
	#name : 'Rect',
	#superclass : 'Object',
	#instVars : [
		'width',
		'height'
	],
	#category : 'Refactor-Rename-Method',
	#package : 'Refactor-Rename-Method'
}

{ #category : 'instance creation' }
Rect class >> width: aWidth height: aHeight [

	^ self new setWidth: aWidth height: aHeight
]

{ #category : 'operating' }
Rect >> calc [

	^ width * height
]

{ #category : 'private' }
Rect >> setWidth: aWidth height: aHeight [

	width := aWidth.
	height := aHeight
]
