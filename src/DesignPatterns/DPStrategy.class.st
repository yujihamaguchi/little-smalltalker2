Class {
	#name : #DPStrategy,
	#superclass : #Object,
	#category : #DesignPatterns
}

{ #category : #execution }
DPStrategy >> execute [
  self subclassResponsibility 
]
