Class {
	#name : 'AreaCalculator',
	#superclass : 'Object',
	#traits : 'TShapeVisiting',
	#classTraits : 'TShapeVisiting classTrait',
	#category : 'Design-Pattern-Visitor',
	#package : 'Design-Pattern-Visitor'
}

{ #category : 'visiting' }
AreaCalculator >> visitCircle: aCircle [

	^ aCircle r * Float pi
]

{ #category : 'visiting' }
AreaCalculator >> visitDot: aDot [

	^ 0
]
