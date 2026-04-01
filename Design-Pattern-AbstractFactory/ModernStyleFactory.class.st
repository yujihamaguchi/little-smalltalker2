Class {
	#name : #ModernStyleFactory,
	#superclass : #FurnitureFactory,
	#category : #'Design-Pattern-AbstractFactory'
}

{ #category : #operations }
ModernStyleFactory >> createChair [

	^ ModernStyleChair new
]

{ #category : #operations }
ModernStyleFactory >> createTable [ 
	
	^ ModernStyleTable new
]

{ #category : #operations }
ModernStyleFactory >> style [

	^ 'Modern'
]
