Class {
	#name : 'HasCoin',
	#superclass : 'GumballMachineState',
	#category : 'Design-Pattern-State',
	#package : 'Design-Pattern-State'
}

{ #category : 'operating' }
HasCoin >> ejectCoin: aMachine [

	aMachine state: NoCoin singleton

	
]

{ #category : 'operating' }
HasCoin >> insertCoin: aMachine [
]

{ #category : 'operating' }
HasCoin >> turnCrank: aMachine [

	aMachine output show: 'A gamball come out!'.
	aMachine state: NoCoin singleton.
	aMachine decreaseStock

]
