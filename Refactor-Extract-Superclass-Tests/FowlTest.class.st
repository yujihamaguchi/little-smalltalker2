Class {
	#name : 'FowlTest',
	#superclass : 'TestCase',
	#category : 'Refactor-Extract-Superclass-Tests',
	#package : 'Refactor-Extract-Superclass-Tests'
}

{ #category : 'tests' }
FowlTest >> testChickenDescribe [

	| chicken result |
	"Arrange"
	chicken := Chicken name: 'Foghorn'.

	"Act"
	result := chicken describe.

	"Assert"
	self assert: result equals: 'Foghorn the fowl'
]

{ #category : 'tests' }
FowlTest >> testDuckDescribe [

	| duck result |
	"Arrange"
	duck := Duck name: 'Donald'.

	"Act"
	result := duck describe.

	"Assert"
	self assert: result equals: 'Donald the fowl'
]
