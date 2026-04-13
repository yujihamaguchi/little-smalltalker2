Class {
	#name : #RegisterForm,
	#superclass : #Colleague,
	#traits : 'TComponent',
	#classTraits : 'TComponent classTrait',
	#category : #'Design-Pattern-Mediator'
}

{ #category : #operations }
RegisterForm >> submit [

	mediator eventFrom: self type: #submit
]
