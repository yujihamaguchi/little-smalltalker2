Class {
	#name : 'Department',
	#superclass : 'Object',
	#instVars : [
		'manager'
	],
	#category : 'Refactor-Hide-Delegate',
	#package : 'Refactor-Hide-Delegate'
}

{ #category : 'instance creation' }
Department class >> manager: aManager [

	^ self new setManager: aManager
]

{ #category : 'accessing' }
Department >> manager [

	^ manager
]

{ #category : 'private' }
Department >> setManager: aManager [

	manager := aManager
]
