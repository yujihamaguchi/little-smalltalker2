Class {
	#name : #PizzaStoreTest,
	#superclass : #TestCase,
	#category : #'Design-Pattern-SimpleFactory-Tests'
}

{ #category : #tests }
PizzaStoreTest >> testOrderMargherita [

	| pizzaStore pizza |
	"Arrange"
	pizzaStore := PizzaStore new.

	"Act"
	pizza := pizzaStore order: #margherita.

	"Assert"
	self assert: pizza class equals: Margherita.
	self assert: pizza isBaked.
	self assert: pizza isCut.
	self assert: pizza isBoxed
]

{ #category : #tests }
PizzaStoreTest >> testOrderPepperoni [

	| pizzaStore pizza |
	"Arrange"
	pizzaStore := PizzaStore new.

	"Act"
	pizza := pizzaStore order: #pepperoni.

	"Assert"
	self assert: pizza class equals: Pepperoni.
	self assert: pizza isBaked.
	self assert: pizza isCut.
	self assert: pizza isBoxed
]

{ #category : #tests }
PizzaStoreTest >> testOrderUnsupportedPizza [

	| pizzaStore |
	"Arrange"
	pizzaStore := PizzaStore new.

	"Act & Assert"
	self should: [ pizzaStore order: #unsupported ] raise: Error
]
