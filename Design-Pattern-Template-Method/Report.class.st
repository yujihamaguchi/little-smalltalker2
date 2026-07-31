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

{ #category : 'operating' }
Report >> generate [

	^ self render: self fetch
	
]

{ #category : 'formatting' }
Report >> render: aData [

	^ self subclassResponsibility 

	
]
