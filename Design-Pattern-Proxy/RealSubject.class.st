Class {
	#name : #RealSubject,
	#superclass : #Object,
	#traits : 'TSubject',
	#classTraits : 'TSubject classTrait',
	#category : #'Design-Pattern-Proxy'
}

{ #category : #operations }
RealSubject >> requestAs: aRoleSymbol [

	^ 'Request processed by ', aRoleSymbol asString
]
