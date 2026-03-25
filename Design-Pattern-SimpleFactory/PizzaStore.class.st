Class {
	#name : #PizzaStore,
	#superclass : #Object,
	#category : #'Design-Pattern-SimpleFactory'
}

{ #category : #factory }
PizzaStore >> order: aSymbol [

	| pizza |
	pizza := aSymbol
		         caseOf: {
				         ([ #margherita ] -> [ Margherita new ]).
				         ([ #pepperoni ] -> [ Pepperoni new ]) }
		         otherwise: [ self error ].
	^ pizza
		  bake;
		  cut;
		  box
]
