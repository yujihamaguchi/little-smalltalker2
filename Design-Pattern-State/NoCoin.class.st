Class {
	#name : 'NoCoin',
	#superclass : 'GumballMachineState',
	#category : 'Design-Pattern-State',
	#package : 'Design-Pattern-State'
}

{ #category : 'operating' }
NoCoin >> ejectCoin: aMachine [

	
]

{ #category : 'operating' }
NoCoin >> insertCoin: aMachine [

	aMachine state: HasCoin singleton
]

{ #category : 'operating' }
NoCoin >> turnCrank: aMachine [

	aMachine output show: 'Please insert coin before turning crank.'
]
