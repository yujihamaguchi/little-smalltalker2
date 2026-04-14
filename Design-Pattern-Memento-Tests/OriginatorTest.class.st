Class {
	#name : #OriginatorTest,
	#superclass : #TestCase,
	#instVars : [
		'originator',
		'careTaker'
	],
	#category : #'Design-Pattern-Memento-Tests'
}

{ #category : #'building suites' }
OriginatorTest class >> testParameters [

	^ ParametrizedTestMatrix new
		  addCase: {
				  (#mementoIndex -> 1).
				  (#expectedStatus -> #state1) };
		  addCase: {
				  (#mementoIndex -> 2).
				  (#expectedStatus -> #state2) };
		  yourself
]

{ #category : #running }
OriginatorTest >> setUp [

	super setUp.
	originator := Originator new.
	careTaker := CareTaker new.
	originator updateState: #state1.
	careTaker addMemento: originator memento.
	originator updateState: #state2.
	careTaker addMemento: originator memento.
	originator updateState: #state3
]

{ #category : #tests }
OriginatorTest >> testRestoreToFirstMemento [

	"Act"
	originator restoreTo: (careTaker mementoAt: 1).

	"Assert"
	self assert: originator state equals: #state1
]

{ #category : #tests }
OriginatorTest >> testRestoreToSecondMemento [

	"Act"
	originator restoreTo: (careTaker mementoAt: 2).

	"Assert"
	self assert: originator state equals: #state2
]
