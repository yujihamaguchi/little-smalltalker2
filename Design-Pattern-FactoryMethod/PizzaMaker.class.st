Class {
	#name : #PizzaMaker,
	#superclass : #Object,
	#category : #'Design-Pattern-FactoryMethod'
}

{ #category : #factory }
PizzaMaker >> create [

	^ self subclassResponsibility 
]

{ #category : #template }
PizzaMaker >> order [

	^ self create bake; cut; box
]
