Class {
	#name : #ArtDecoStyleFactory,
	#superclass : #FurnitureFactory,
	#category : #'Design-Pattern-AbstractFactory'
}

{ #category : #operations }
ArtDecoStyleFactory >> createChair [

	^ ArtDecoStyleChair new
]

{ #category : #operations }
ArtDecoStyleFactory >> createTable [

	^ ArtDecoStyleTable new
]

{ #category : #operations }
ArtDecoStyleFactory >> style [

	^ 'Art deco'
]
