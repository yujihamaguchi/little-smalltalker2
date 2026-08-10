Class {
	#name : 'JSONExporter',
	#superclass : 'Object',
	#traits : 'TShapeVisiting',
	#classTraits : 'TShapeVisiting classTrait',
	#category : 'Design-Pattern-Visitor',
	#package : 'Design-Pattern-Visitor'
}

{ #category : 'visiting' }
JSONExporter >> visitCircle: aCircle [

	^ 'JSONed Circle(x: ', aCircle x asString, ', y: ', aCircle y asString, ', r: ', aCircle r asString, ')'
]

{ #category : 'visiting' }
JSONExporter >> visitDot: aDot [

	^ 'JSONed Dot(x: ', aDot x asString, ', y: ', aDot y asString, ')'
]
