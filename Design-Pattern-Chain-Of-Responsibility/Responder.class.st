Class {
	#name : #Responder,
	#superclass : #Object,
	#instVars : [
		'nextResponder'
	],
	#category : #'Design-Pattern-Chain-Of-Responsibility'
}

{ #category : #'instance creation' }
Responder class >> next: aResponder [

	^ self new next: aResponder
]

{ #category : #processing }
Responder >> handle: aRequest [

	^ self subclassResponsibility 
]

{ #category : #'private accessing' }
Responder >> next: aResponder [

	nextResponder := aResponder.
	^ self
]
