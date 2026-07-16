Class {
	#name : 'NoCoin',
	#superclass : 'Object',
	#traits : 'TGumballMachineOperating',
	#classTraits : 'TGumballMachineOperating classTrait',
	#category : 'Design-Pattern-State',
	#package : 'Design-Pattern-State'
}

{ #category : 'as yet unclassified' }
NoCoin >> ejectCoin: aMachine [

	
]

{ #category : 'as yet unclassified' }
NoCoin >> insertCoin: aMachine [

	aMachine state: HasCoin new
]

{ #category : 'as yet unclassified' }
NoCoin >> turnCrank: aMachine [

	Transcript show: 'Please insert coin before turning crank.'
]
