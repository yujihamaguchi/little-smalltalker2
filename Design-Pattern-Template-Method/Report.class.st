Class {
	#name : 'Report',
	#superclass : 'Object',
	#category : 'Design-Pattern-Template-Method',
	#package : 'Design-Pattern-Template-Method'
}

{ #category : 'fetching' }
Report >> fetch [
]

{ #category : 'fetching' }
Report >> format: aString [
]

{ #category : 'translating' }
Report >> generate [

	self format: self fetch
	
]
