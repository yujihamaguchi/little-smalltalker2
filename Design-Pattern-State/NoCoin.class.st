Class {
	#name : 'NoCoin',
	#superclass : 'Object',
	#traits : 'TGumballMachineOperating',
	#classTraits : 'TGumballMachineOperating classTrait',
	#category : 'Design-Pattern-State',
	#package : 'Design-Pattern-State'
}

{ #category : 'operating' }
NoCoin >> ejectCoin: aMachine [

	
]

{ #category : 'operating' }
NoCoin >> insertCoin: aMachine [

	aMachine state: HasCoin new
]

{ #category : 'operating' }
NoCoin >> turnCrank: aMachine [

	aMachine output show: 'Please insert coin before turning crank.'
]
