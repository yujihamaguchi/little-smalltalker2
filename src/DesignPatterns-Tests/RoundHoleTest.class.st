Class {
	#name : #RoundHoleTest,
	#superclass : #TestCase,
	#category : #'DesignPatterns-Tests-Adapter'
}

{ #category : #tests }
RoundHoleTest >> testFitsRoundPeg [

	| hole roundPeg |
	1 to: 5 do: [ :aNumber | 
		"Arrange"
		hole := Hole radius: 5.
		roundPeg := RoundPeg radius: aNumber.

		"Act & Assert"
		self assert: (hole isFits: roundPeg) ]
]
