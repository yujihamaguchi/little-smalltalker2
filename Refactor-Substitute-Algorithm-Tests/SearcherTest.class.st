Class {
	#name : 'SearcherTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Substitute-Algorithm-Tests',
	#package : 'Refactor-Substitute-Algorithm-Tests'
}

{ #category : 'tests' }
SearcherTest >> testFound [

	| searcher result |
	"Arrange"
	searcher := Searcher new.

	"Act"
	result := searcher foundName: 'John'.

	"Assert"
	self assert: result equals: 'John'
]

{ #category : 'tests' }
SearcherTest >> testNotFound [

	| searcher result |
	"Arrange"
	searcher := Searcher new.

	"Act"
	result := searcher foundName: 'Zed'.

	"Assert"
	self assert: result equals: ''
]
