Class {
	#name : #Hole,
	#superclass : #Object,
	#instVars : [
		'radius'
	],
	#category : #'DesignPatterns-Adapter'
}

{ #category : #initialization }
Hole class >> radius: number [

	^ self new setRadius: number
]

{ #category : #testing }
Hole >> isFits: aPeg [

	^ radius >= aPeg radius
]

{ #category : #initialization }
Hole >> setRadius: aNumber [

	radius := aNumber
]
