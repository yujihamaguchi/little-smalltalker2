Class {
	#name : #DirectorTest,
	#superclass : #TestCase,
	#category : #'Design-Pattern-Builder-Tests'
}

{ #category : #tests }
DirectorTest >> testConstructSportsCarBody [

	| director carBodyBuilder carBody |
	"Arrange"
	director := Director new.
	carBodyBuilder := CarBodyBuilder new.

	"Act"
	carBody := director constructSportsCar: carBodyBuilder.

	"Assert"
	self assert: carBody engine class equals: SportsEngine.
	self assert: carBody seats size equals: 2
]
