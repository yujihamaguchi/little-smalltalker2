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

{ #category : 'formatting' }
Report >> format: aData [

	^ self subclassResponsibility 

	
]

{ #category : 'operating' }
Report >> generate [

	^ self format: self fetch
	
]
