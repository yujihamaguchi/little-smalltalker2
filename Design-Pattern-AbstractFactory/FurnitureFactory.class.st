Class {
	#name : #FurnitureFactory,
	#superclass : #Object,
	#category : #'Design-Pattern-AbstractFactory'
}

{ #category : #operations }
FurnitureFactory >> createChair [

	^ self subclassResponsibility 
]

{ #category : #operations }
FurnitureFactory >> createTable [

	^ self subclassResponsibility 
]

{ #category : #operations }
FurnitureFactory >> style [

	^ self subclassResponsibility 
]
