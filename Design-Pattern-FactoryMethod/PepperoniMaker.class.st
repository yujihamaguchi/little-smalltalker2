Class {
	#name : #PepperoniMaker,
	#superclass : #PizzaMaker,
	#category : #'Design-Pattern-FactoryMethod'
}

{ #category : #factory }
PepperoniMaker >> create [

	^ Pepperoni new
]
