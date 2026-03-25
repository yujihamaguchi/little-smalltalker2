Class {
	#name : #Pizza,
	#superclass : #Object,
	#instVars : [
		'isBaked',
		'isBoxed',
		'isCut'
	],
	#category : #'Design-Pattern-SimpleFactory'
}

{ #category : #operations }
Pizza >> bake [

	isBaked := true
]

{ #category : #operations }
Pizza >> box [

	isBoxed := true
]

{ #category : #operations }
Pizza >> cut [

	isCut := true
]

{ #category : #initialization }
Pizza >> initialize [

	super initialize.
	isBaked := false.
	isCut := false.
	isBoxed := false
]

{ #category : #testing }
Pizza >> isBaked [

	^ isBaked
]

{ #category : #testing }
Pizza >> isBoxed [

	^ isBoxed
]

{ #category : #testing }
Pizza >> isCut [

	^ isCut
]
