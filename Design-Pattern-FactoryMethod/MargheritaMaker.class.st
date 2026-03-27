Class {
	#name : #MargheritaMaker,
	#superclass : #PizzaMaker,
	#category : #'Design-Pattern-FactoryMethod'
}

{ #category : #factory }
MargheritaMaker >> create [

	^ Margherita new
]
