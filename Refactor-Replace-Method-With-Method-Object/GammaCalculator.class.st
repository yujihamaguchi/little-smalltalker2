Class {
	#name : 'GammaCalculator',
	#superclass : 'Object',
	#category : 'Refactor-Replace-Method-With-Method-Object',
	#package : 'Refactor-Replace-Method-With-Method-Object'
}

{ #category : 'operating' }
GammaCalculator >> gamma: inputVal by: quantity [

	| importantValue1 importantValue2 importantValue3 |
	importantValue1 := (inputVal * quantity) + 100.
	importantValue2 := (inputVal * quantity) + 50.
	(quantity - 2) > 100 ifTrue: [ importantValue2 := importantValue2 - 20 ].
	importantValue3 := importantValue2 * 7.
	^ importantValue3 - (2 * importantValue1)
]
