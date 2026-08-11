Class {
	#name : 'SquarePegAdapter',
	#superclass : 'Object',
	#traits : 'TRadius',
	#classTraits : 'TRadius classTrait',
	#instVars : [
		'squarePeg'
	],
	#category : 'Design-Pattern-Adapter',
	#package : 'Design-Pattern-Adapter'
}

{ #category : 'instance creation' }
SquarePegAdapter class >> squarePeg: aSquarePeg [

	^ self new squarePeg: aSquarePeg; yourself
]

{ #category : 'accessing' }
SquarePegAdapter >> radius [

	^ squarePeg width / 2 sqrt 
]

{ #category : 'accessing' }
SquarePegAdapter >> squarePeg: aSquarePeg [

	squarePeg := aSquarePeg
]
