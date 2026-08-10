Trait {
	#name : 'TVisitorAccepting',
	#category : 'Design-Pattern-Visitor',
	#package : 'Design-Pattern-Visitor'
}

{ #category : 'accepting' }
TVisitorAccepting >> accept: aVisitor [

	^ self explicitRequirement 
]
