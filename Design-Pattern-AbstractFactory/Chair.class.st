Class {
	#name : #Chair,
	#superclass : #Object,
	#category : #'Design-Pattern-AbstractFactory'
}

{ #category : #operations }
Chair >> sit [

	^ 'Sit on the ', self style, ' style chair.'
]

{ #category : #operations }
Chair >> style [

	^ self subclassResponsibility 
]
