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

	machine := GumballMachine output: Mock new.
]

{ #category : 'tests' }
GumballMachineTest >> testDecreaseStock [

	"Arrange"
	machine stock: 1.
	
	"Act"
	machine decreaseStock.
	
	"Assert"
	self assert: machine stock equals: 0.
]

{ #category : 'tests' }
GumballMachineTest >> testDecreaseStockWhenZero [

	"Arrange"
	machine stock: 0.
	
	"Act"
	machine decreaseStock.
	
	"Assert"
	self assert: machine stock equals: 0.
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
GumballMachineTest >> testEjectCoinWhenSoldOut [

	"Arrange"
	machine stock: 0.
	self assert: machine state class equals: SoldOut.

	"Act"
	machine ejectCoin.

	"Assert"
	self assert: machine state class equals: SoldOut
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
	self assert: machine state class equals: NoCoin.

	"Act"
	machine insertCoin.

	"Assert"
	self assert: machine state class equals: HasCoin
]

{ #category : 'tests' }
GumballMachineTest >> testInsertCoinWhenSoldOut [

	"Arrange"
	machine stock: 0.
	self assert: machine state class equals: SoldOut.

	"Act"
	machine insertCoin.

	"Assert"
	self assert: machine state class equals: SoldOut
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
GumballMachineTest >> testSetStock [
	| stateClass |
	"Arrange"
	stateClass := machine state class.
	
	"Act"
	machine stock: 1.

	"Assert"
	self assert: machine stock equals: 1.
	self assert: machine state class equals: stateClass.
]

{ #category : 'tests' }
GumballMachineTest >> testSetStockZero [

	"Act"
	machine stock: 0.

	"Assert"
	self assert: machine stock equals: 0.
	self assert: machine state class equals: SoldOut.
]

{ #category : 'tests' }
GumballMachineTest >> testTrunCrankWithNoCoin [
	| stock |
	"Arrange"
	stock := machine stock.
	
	"Act"
	machine turnCrank.

	"Assert"
	machine output should receive show: 'Please insert coin before turning crank.'.
	self assert: machine stock equals: stock.
	self assert: machine state class equals: NoCoin.

]

{ #category : 'tests' }
GumballMachineTest >> testTurnCrank [
	| stock |
	"Arrange"
	stock := machine stock.
	machine insertCoin.

	"Act"
	machine turnCrank.

	"Assert"
	machine output should receive show: 'A gamball come out!'.
	self assert: machine stock equals: stock - 1.
	self assert: machine state class equals: NoCoin.
]

{ #category : 'tests' }
GumballMachineTest >> testTurnCrankOnLastStok [

	"Arrange"
	machine stock: 1.
	machine insertCoin.

	"Act"
	machine turnCrank.

	"Assert"
	self assert: machine state class equals: SoldOut
]

{ #category : 'tests' }
GumballMachineTest >> testTurnCrankWhenSoldOut [

	"Arrange"
	machine stock: 0.
	self assert: machine state class equals: SoldOut.

	"Act"
	machine turnCrank.

	"Assert"
	machine output should receive show: 'It is sold out, sorry.'
]
