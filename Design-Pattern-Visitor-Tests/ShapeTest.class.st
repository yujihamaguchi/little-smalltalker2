Class {
	#name : 'ShapeTest',
	#superclass : 'TestCase',
	#category : 'Design-Pattern-Visitor-Tests',
	#package : 'Design-Pattern-Visitor-Tests'
}

{ #category : 'tests' }
ShapeTest >> testCircleAcceptAreaCalculator [

	| circle calculator result  |
	"Arrange"
	circle := Circle x: 1 y: 2 r: 3.
	calculator := AreaCalculator new.
	
	"Act"
	result := circle accept: calculator.
	
	"Assert"
	self assert: result equals: 3 squared * Float pi.
]

{ #category : 'tests' }
ShapeTest >> testCircleAcceptJSONExporter [

	| circle exporter result |
	"Arrange"
	circle := Circle x: 3 y: 4 r: 5.
	exporter := JSONExporter new.
	
	"Act"
	result := circle accept: exporter.
	
	"Assert"
	self assert: result equals: 'JSONed Circle(x: 3, y: 4, r: 5)'
]

{ #category : 'tests' }
ShapeTest >> testCircleAcceptXMLExporter [

	| circle exporter result |
	"Arrange"
	circle := Circle x: 3 y: 4 r: 5.
	exporter := XMLExporter new.
	
	"Act"
	result := circle accept: exporter.
	
	"Assert"
	self assert: result equals: 'XMLed Circle(x: 3, y: 4, r: 5)'
]

{ #category : 'tests' }
ShapeTest >> testDotAcceptAreaCalculator [

	| dot calculator result |
	"Arrange"
	dot := Dot x: 1 y: 2.
	calculator := AreaCalculator new.
	
	"Act"
	result := dot accept: calculator.
	
	"Assert"
	self assert: result isZero 
]

{ #category : 'tests' }
ShapeTest >> testDotAcceptJSONExporter [

	| dot exporter result |
	"Arrange"
	dot := Dot x: 1 y: 2.
	exporter := JSONExporter new.
	
	"Act"
	result := dot accept: exporter.
	
	"Assert"
	self assert: result equals: 'JSONed Dot(x: 1, y: 2)'
]

{ #category : 'tests' }
ShapeTest >> testDotAcceptXMLExporter [

	| dot exporter result |
	"Arrange"
	dot := Dot x: 1 y: 2.
	exporter := XMLExporter new.
	
	"Act"
	result := dot accept: exporter.
	
	"Assert"
	self assert: result equals: 'XMLed Dot(x: 1, y: 2)'
]
