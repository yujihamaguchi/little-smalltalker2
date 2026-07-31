Class {
	#name : 'HTMLReport',
	#superclass : 'Report',
	#category : 'Design-Pattern-Template-Method',
	#package : 'Design-Pattern-Template-Method'
}

{ #category : 'formatting' }
HTMLReport >> render: aData [
	| list |
	list := aData inject: '' into: [ :acc :each | acc, '<li>', each, '</li>' ].
	^ '<ul>', list, '</ul>'
	
]
