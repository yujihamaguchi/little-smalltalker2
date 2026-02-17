Trait {
	#name : #TTriLevelSwitchable,
	#category : #'Design-Pattern-Bridge'
}

{ #category : #processing }
TTriLevelSwitchable >> high [

	^ self explicitRequirement 
]

{ #category : #processing }
TTriLevelSwitchable >> low [

	^ self explicitRequirement 
]

{ #category : #processing }
TTriLevelSwitchable >> medium [

	^ self explicitRequirement 
]
