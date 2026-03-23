Class {
	#name : #BoxTest,
	#superclass : #TestCase,
	#category : #'Design-Pattern-Composite-Tests'
}

{ #category : #tests }
BoxTest >> testPrice [

	| box smallBox product1 product2 product3 totalPrice |
	"Arrange"
	box := Box new.
	smallBox := Box new.
	product1 := Product price: 10.
	product2 := Product price: 20.
	product3 := Product price: 30.

	smallBox add: product1.
	box add: smallBox.
	box add: product2.
	box add: product3.

	"Act"
	totalPrice := box price.

	"Assert"
	self assert: totalPrice equals: 60
]

{ #category : #tests }
BoxTest >> testPriceOfEmpty [

	| box |
	"Arrange"
	box := Box new.

	"Act & Assert"
	self assert: box price equals: 0
]
