Class {
	#name : #Observer,
	#superclass : #Object,
	#category : #'Design-Pattern-Observer'
}

{ #category : #'instance creation' }
Observer class >> subject: aSubject [

	| observer |
	observer := self new.
	aSubject addObserver: observer.
	^ observer
]

{ #category : #updating }
Observer >> humidity: aNumber [

	^ self subclassResponsibility 
]

{ #category : #updating }
Observer >> temperature: aNumber [

	^ self subclassResponsibility 
]
