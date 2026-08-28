Class {
	#name : 'Parcel',
	#superclass : 'Object',
	#instVars : [
		'height',
		'width'
	],
	#category : 'Refactor-Split-Temporary-Variable',
	#package : 'Refactor-Split-Temporary-Variable'
}

{ #category : 'instance creation' }
Parcel class >> height: aHeight width: aWidth [

	^ self new setHeight: aHeight width: aWidth
]

{ #category : 'private' }
Parcel >> setHeight: aHeight width: aWidth [

	height := aHeight.
	width := aWidth
]

{ #category : 'operating' }
Parcel >> summary [

	| temp result |
	temp := 2 * (height + width).
	result := temp.
	temp := height * width.
	^ result + temp
]
