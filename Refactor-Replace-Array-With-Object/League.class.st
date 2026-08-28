Class {
	#name : 'League',
	#superclass : 'Object',
	#category : 'Refactor-Replace-Array-With-Object',
	#package : 'Refactor-Replace-Array-With-Object'
}

{ #category : 'operating' }
League >> nameOf: aRow [

	^ aRow at: 1
]

{ #category : 'operating' }
League >> winsOf: aRow [

	^ aRow at: 2
]
