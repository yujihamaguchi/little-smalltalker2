Class {
	#name : 'GumballMachineTest',
	#superclass : 'TestCase',
	#instVars : [
		'machine'
	],
	#category : 'Design-Pattern-State-Tests',
	#package : 'Design-Pattern-State-Tests'
}

{ #category : 'running' }
GumballMachineTest >> setUp [

	machine := GumballMachine new
]

{ #category : 'tests' }
GumballMachineTest >> testEjectCoin [
"Arrange"
machine insertCoin.
self assert: machine state class equals: HasCoin.

"Act"
machine ejectCoin.

"Assert"
self assert: machine state class equals: NoCoin
]

{ #category : 'tests' }
GumballMachineTest >> testEjectCoinWithNoCoin [
"Arrange"
self assert: machine state class equals: NoCoin.

"Act"
machine ejectCoin.

"Assert"
self assert: machine state class equals: NoCoin
]

{ #category : 'tests' }
GumballMachineTest >> testInsertCoin [
"Arrange"
self assert: (machine state isMemberOf: NoCoin).

"Act"
machine insertCoin.

"Assert"
self assert: (machine state isMemberOf: HasCoin)
]

{ #category : 'tests' }
GumballMachineTest >> testInsertCoinWithHasCoin [
"Arrange"
machine insertCoin.
self assert: machine state class equals: HasCoin.

"Act"
machine insertCoin.

"Assert"
self assert: machine state class equals: HasCoin.

]

{ #category : 'tests' }
GumballMachineTest >> testTrunCrankWithNoCoin [
"Arrange"
Transcript stub.

"Act"
machine turnCrank.

"Assert"
Transcript should receive show: 'Please insert coin before turning crank.'.
self assert: machine stock equals: 10.
self assert: machine state class equals: NoCoin.

]

{ #category : 'tests' }
GumballMachineTest >> testTurnCrank [
"Arrange"
Transcript stub.
self assert: machine stock equals: 10.
machine insertCoin.

"Act"
machine turnCrank.

"Assert"
Transcript should receive show: 'A gamball come out!'.
self assert: machine stock equals: 9.
self assert: machine state class equals: NoCoin.
]

{ #category : 'tests' }
GumballMachineTest >> testTurnCrankOnLastStok [
"Arrange"
9 timesRepeat: [ 
	machine insertCoin; turnCrank ].
machine insertCoin.

"Act"
machine turnCrank.

"Assert"
self assert: machine state class equals: SoldOut
]

{ #category : 'tests' }
GumballMachineTest >> testTurnCrankWhenSoldOut [
"Arrange"
Transcript stub.
10 timesRepeat: [ 
	machine insertCoin; turnCrank ].

"Act"
machine turnCrank.

"Assert"
Transcript should receive show: 'It is sold out, sorry.'
]
