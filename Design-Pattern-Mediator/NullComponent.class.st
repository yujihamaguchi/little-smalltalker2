Class {
	#name : #NullComponent,
	#superclass : #Object,
	#traits : 'TComponent',
	#classTraits : 'TComponent classTrait',
	#category : #'Design-Pattern-Mediator'
}

{ #category : #operations }
NullComponent >> disable [

	"no op"
]

{ #category : #operations }
NullComponent >> enable [

	"no op"
]

{ #category : #accessing }
NullComponent >> isEnabled [ 

	^ false
]
