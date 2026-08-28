Class {
	#name : 'Door',
	#superclass : 'Object',
	#instVars : [
		'open'
	],
	#category : 'Refactor-Replace-Parameter-With-Explicit-Methods',
	#package : 'Refactor-Replace-Parameter-With-Explicit-Methods'
}

{ #category : 'accessing' }
Door >> isOpen [

	^ open
]

{ #category : 'operating' }
Door >> setDoor: aSymbol [

	aSymbol = #open ifTrue: [ open := true ].
	aSymbol = #closed ifTrue: [ open := false ]
]
