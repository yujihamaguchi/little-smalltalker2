Class {
	#name : #PizzaMakerTest,
	#superclass : #TestCase,
	#category : #'Design-Pattern-FactoryMethod-Tests'
}

{ #category : #tests }
PizzaMakerTest >> testOrderMargherita [

	| maker pizza |
	"Arrange"
	maker := MargheritaMaker new.

	"Act"
	pizza := maker order.

	"Assert"
	self assert: pizza class equals: Margherita.
	self assert: pizza isBaked.
	self assert: pizza isCut.
	self assert: pizza isBoxed
]

{ #category : #tests }
PizzaMakerTest >> testOrderPepperoni [

	| maker pizza |
	"Arrange"
	maker := PepperoniMaker new.

	"Act"
	pizza := maker order.

	"Assert"
	self assert: pizza class equals: Pepperoni.
	self assert: pizza isBaked.
	self assert: pizza isCut.
	self assert: pizza isBoxed
]
