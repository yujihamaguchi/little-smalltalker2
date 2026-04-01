Class {
	#name : #FurnitureStudioTest,
	#superclass : #TestCase,
	#category : #'Design-Pattern-AbstractFactory-Tests'
}

{ #category : #tests }
FurnitureStudioTest >> testCreateArtDecoStyleTableSet [

	| artDecoStyleFactory furnitureStudio tableSet |
	"Arrange"
	artDecoStyleFactory := ArtDecoStyleFactory new.
	furnitureStudio := FurnitureStudio factory: artDecoStyleFactory.

	"Act"
	tableSet := furnitureStudio createTableSet.

	"Assert"
	self
		assert: tableSet description
		equals: 'Art deco style furniture set.'.
	self
		assert: tableSet chair sit
		equals: 'Sit on the art deco style chair.'.
	self
		assert: tableSet table stand
		equals: 'Stand on the art deco style table.'
]

{ #category : #tests }
FurnitureStudioTest >> testCreateModernStyleTableSet [

	| modernStyleFactory furnitureStudio tableSet |
	"Arrange"
	modernStyleFactory := ModernStyleFactory new.
	furnitureStudio := FurnitureStudio factory: modernStyleFactory.

	"Act"
	tableSet := furnitureStudio createTableSet.

	"Assert"
	self
		assert: tableSet description
		equals: 'Modern style furniture set.'.
	self
		assert: tableSet chair sit
		equals: 'Sit on the modern style chair.'.
	self
		assert: tableSet table stand
		equals: 'Stand on the modern style table.'
]
