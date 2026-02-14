Class {
	#name : #RoundHoleTest,
	#superclass : #TestCase,
	#category : #'Design-Pattern-Tests'
}

{ #category : #tests }
RoundHoleTest >> testFitsRoundPeg [

	| roundHole roundPeg |
	"Arrange"
	roundHole := RoundHole radius: 5.
	roundPeg := RoundPeg radius: 4.

	"Act & Assert"
	self assert: (roundHole fits: roundPeg)
]

{ #category : #tests }
RoundHoleTest >> testFitsRoundPegExactly [

	| roundHole roundPeg |
	"Arrange"
	roundHole := RoundHole radius: 5.
	roundPeg := RoundPeg radius: 5.

	"Act & Assert"
	self assert: (roundHole fits: roundPeg)
]

{ #category : #tests }
RoundHoleTest >> testFitsSquarePeg [

	| roundHole squarePeg squarePegToRoundHoleAdapter |
	"Arrange"
	roundHole := RoundHole radius: 5.
	squarePeg := SquarePeg width: 4 * 2 sqrt.
	squarePegToRoundHoleAdapter := SquarePegToRoundHoleAdapter
		                               squarePeg: squarePeg.

	"Act & Assert"
	self assert: (roundHole fits: squarePegToRoundHoleAdapter)
]

{ #category : #tests }
RoundHoleTest >> testFitsSquarePegExactly [

	| roundHole squarePeg squarePegToRoundHoleAdapter |
	"Arrange"
	roundHole := RoundHole radius: 5.
	squarePeg := SquarePeg width: 5 * 2 sqrt.
	squarePegToRoundHoleAdapter := SquarePegToRoundHoleAdapter
		                               squarePeg: squarePeg.

	"Act & Assert"
	self assert: (roundHole fits: squarePegToRoundHoleAdapter)
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

	| roundHole squarePeg squarePegToRoundHoleAdapter |
	"Arrange"
	roundHole := RoundHole radius: 5.
	squarePeg := SquarePeg width: 6 * 2 sqrt.
	squarePegToRoundHoleAdapter := SquarePegToRoundHoleAdapter
		                               squarePeg: squarePeg.

	"Act & Assert"
	self deny: (roundHole fits: squarePegToRoundHoleAdapter)
]
