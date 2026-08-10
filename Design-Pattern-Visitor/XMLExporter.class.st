Class {
	#name : 'XMLExporter',
	#superclass : 'Object',
	#traits : 'TShapeVisiting',
	#classTraits : 'TShapeVisiting classTrait',
	#category : 'Design-Pattern-Visitor',
	#package : 'Design-Pattern-Visitor'
}

{ #category : 'visiting' }
XMLExporter >> visitCircle: aCircle [

	^ 'XMLed Circle(x: ', aCircle x asString, ', y: ', aCircle y asString, ', r: ', aCircle r asString, ')'
]

{ #category : 'visiting' }
XMLExporter >> visitDot: aDot [

	^ 'XMLed Dot(x: ', aDot x asString, ', y: ', aDot y asString, ')'
]
