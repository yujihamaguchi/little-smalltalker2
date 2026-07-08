Class {
	#name : 'GumballMachineTest',
	#superclass : 'TestCase',
	#category : 'Design-Pattern-State-Tests',
	#package : 'Design-Pattern-State-Tests'
}

{ #category : 'tests' }
GumballMachineTest >> testInsertCoin [
| machine |
"Arrange"
machine := GumballMachine new.
self assert: machine state class equals: NoCoin.

"Act"
machine insertCoin.

"Assert"
self assert: machine state class equals: HasCoin
]
