Class {
	#name : #TriLevel,
	#superclass : #Object,
	#classInstVars : [
		'uniqueInstance'
	],
	#category : #'Design-Pattern-Bridge'
}

{ #category : #accessing }
TriLevel class >> uniqueInstance [

	^ uniqueInstance ifNil: [ uniqueInstance := self new ]
]
