Trait {
	#name : #TOutputControllable,
	#category : #'Design-Pattern-Bridge'
}

{ #category : #modifying }
TOutputControllable >> defaultOutput [

	^ self explicitRequirement 
]

{ #category : #processing }
TOutputControllable >> downBy: aNumber [

	^ self explicitRequirement 
]

{ #category : #processing }
TOutputControllable >> upBy: aNumber [

	^ self explicitRequirement 
]
