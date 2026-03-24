Trait {
	#name : #TValue,
	#category : #'Design-Pattern-Decorator'
}

{ #category : #accessing }
TValue >> value [

	^ self explicitRequirement 
]
