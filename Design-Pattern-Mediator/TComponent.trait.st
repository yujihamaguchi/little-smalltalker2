Trait {
	#name : #TComponent,
	#instVars : [
		'isEnabled'
	],
	#category : #'Design-Pattern-Mediator'
}

{ #category : #operations }
TComponent >> disable [

	isEnabled := false
]

{ #category : #operations }
TComponent >> enable [

	isEnabled := true
]

{ #category : #accessing }
TComponent >> isEnabled [ 

	^ isEnabled
]
