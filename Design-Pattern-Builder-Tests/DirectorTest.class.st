Class {
	#name : #DirectorTest,
	#superclass : #TestCase,
	#category : #'Design-Pattern-Builder-Tests'
}

{ #category : #tests }
DirectorTest >> testConstructSUVCarBody [

	| director carBodyBuilder carBody |
	"Arrange"
	director := Director new.
	carBodyBuilder := CarBodyBuilder new.

	"Act"
	carBody := director constructSUVCar: carBodyBuilder.

	"Assert"
	self assert: carBody engine class equals: NormalEngine.
	self assert: carBody seats size equals: 4
]

{ #category : #tests }
DirectorTest >> testConstructSUVCarManual [

	| director carManualBuilder carManual |
	"Arrange"
	director := Director new.
	carManualBuilder := CarManualBuilder new.

	"Act"
	carManual := director constructSUVCar: carManualBuilder.

	"Assert"
	self assert: carManual engine equals: 'NormalEngine equipped'.
	self assert: carManual seats equals: '4 seats'
]

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

{ #category : #tests }
DirectorTest >> testConstructSportsCarManual [

	| director carManualBuilder carManual |
	"Arrange"
	director := Director new.
	carManualBuilder := CarManualBuilder new.

	"Act"
	carManual := director constructSportsCar: carManualBuilder.

	"Assert"
	self assert: carManual engine equals: 'SportsEngine equipped'.
	self assert: carManual seats equals: '2 seats'
]
