Trait {
	#name : 'TShapeVisiting',
	#category : 'Design-Pattern-Visitor',
	#package : 'Design-Pattern-Visitor'
}

{ #category : 'visiting' }
TShapeVisiting >> visitCircle: aCircle [

	^ self explicitRequirement 
]

{ #category : 'visiting' }
TShapeVisiting >> visitDot: aDot [

	^ self explicitRequirement 
]
