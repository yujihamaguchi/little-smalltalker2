Trait {
	#name : #TSubject,
	#category : #'Design-Pattern-Proxy'
}

{ #category : #operations }
TSubject >> requestAs: aRoleSymbol [

	^ self explicitRequirement 
]
