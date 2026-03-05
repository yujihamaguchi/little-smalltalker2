Class {
	#name : #CarBodyBuilderTest,
	#superclass : #TestCase,
	#category : #'Design-Pattern-Builder-Tests'
}

{ #category : #tests }
CarBodyBuilderTest >> testBuildWithoutEngine [

	| carBodyBuilder |
	"Arrange"
	carBodyBuilder := CarBodyBuilder new.

	"Act & Assert"
	self
		should: [ carBodyBuilder build ]
		raise: Error
		withExceptionDo: [ :ex | self assert: ex messageText equals: 'engine is required' ]
]
