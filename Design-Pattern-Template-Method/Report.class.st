Class {
	#name : 'Report',
	#superclass : 'Object',
	#category : 'Design-Pattern-Template-Method',
	#package : 'Design-Pattern-Template-Method'
}

{ #category : 'fetching' }
Report >> fetch [

	^ { 'foo' . 'bar' . 'baz' }
]

{ #category : 'fetching' }
Report >> format: aData [

	^ aData fold: [ :acc :each | acc, ',', each ]

	
]

{ #category : 'translating' }
Report >> generate [

	self format: self fetch
	
]
