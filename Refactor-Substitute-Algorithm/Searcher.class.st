Class {
	#name : 'Searcher',
	#superclass : 'Object',
	#category : 'Refactor-Substitute-Algorithm',
	#package : 'Refactor-Substitute-Algorithm'
}

{ #category : 'operating' }
Searcher >> foundName: aName [

	| result |
	result := ''.
	#('Don' 'John' 'Kent') do: [ :each |
		result = '' ifTrue: [ each = aName ifTrue: [ result := each ] ] ].
	^ result
]
