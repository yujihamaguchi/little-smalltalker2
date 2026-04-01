Class {
	#name : #Table,
	#superclass : #Object,
	#category : #'Design-Pattern-AbstractFactory'
}

{ #category : #operations }
Table >> stand [

	^ 'Stand on the ', self style, ' style table.'
]

{ #category : #operations }
Table >> style [

	^ self subclassResponsibility 
]
