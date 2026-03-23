Trait {
	#name : #TPrice,
	#category : #'Design-Pattern-Composite'
}

{ #category : #processing }
TPrice >> price [

	^ self explicitRequirement 
]
