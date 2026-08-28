Class {
	#name : 'Vehicle2',
	#superclass : 'Object',
	#instVars : [
		'wheels'
	],
	#category : 'Refactor-Collapse-Hierarchy',
	#package : 'Refactor-Collapse-Hierarchy'
}

{ #category : 'instance creation' }
Vehicle2 class >> wheels: aNumber [

	^ self new setWheels: aNumber
]

{ #category : 'private' }
Vehicle2 >> setWheels: aNumber [

	wheels := aNumber
]

{ #category : 'accessing' }
Vehicle2 >> wheels [

	^ wheels
]
