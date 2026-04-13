Class {
	#name : #Colleague,
	#superclass : #Object,
	#instVars : [
		'mediator'
	],
	#category : #'Design-Pattern-Mediator'
}

{ #category : #'instance creation' }
Colleague class >> mediator: aMediator [

	^ self new mediator: aMediator 
]

{ #category : #accessing }
Colleague >> mediator: aMediator [

	mediator := aMediator 
]
