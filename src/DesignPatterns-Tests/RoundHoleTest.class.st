Class {
	#name : #RoundHoleTest,
	#superclass : #TestCase,
	#category : #'DesignPatterns-Tests-Adapter'
}

{ #category : #tests }
RoundHoleTest >> testFitsRoundPeg [

	| roundHole roundPeg |
	1 to: 5 do: [ :aNumber | 
		"Arrange"
		roundHole := RoundHole radius: 5.
		roundPeg := RoundPeg radius: aNumber.

		"Act & Assert"
		self assert: (roundHole fits: roundPeg) ]
]

{ #category : #tests }
RoundHoleTest >> testFitsSquarePeg [

	| roundHole width squarePeg squarePegAdapter |
	1 to: 5 do: [ :aNumber | 
		"Arrange"
		roundHole := RoundHole radius: 5.
		width := aNumber * 2 sqrt.
		squarePeg := SquarePeg width: width.
		squarePegAdapter := SquarePegToRoundHoleAdapter squarePeg: squarePeg.

		"Assert"
		self assert: (roundHole fits: squarePegAdapter) ]
]

{ #category : #tests }
RoundHoleTest >> testNotFitsRoundPeg [

	| roundHole roundPeg |
	"Arrange"
	roundHole := RoundHole radius: 5.
	roundPeg := RoundPeg radius: 6.
	
	"Act & Assert"
	self deny: (roundHole fits: roundPeg)
]

{ #category : #tests }
RoundHoleTest >> testNotFitsSquarePeg [

	| roundHole squarePeg squarePegAdapter |
	"Arrange"
	roundHole := RoundHole radius: 5.
	squarePeg := SquarePeg width: 5 * 2 sqrt + 1.
	squarePegAdapter := SquarePegToRoundHoleAdapter squarePeg: squarePeg.

	"Assert"
	self deny: (roundHole fits: squarePegAdapter)
]
