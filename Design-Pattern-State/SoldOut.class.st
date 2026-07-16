Class {
	#name : 'SoldOut',
	#superclass : 'Object',
	#traits : 'TGumballMachineOperating',
	#classTraits : 'TGumballMachineOperating classTrait',
	#category : 'Design-Pattern-State',
	#package : 'Design-Pattern-State'
}

{ #category : 'as yet unclassified' }
SoldOut >> ejectCoin: aMachine [

	aMachine state: NoCoin new

	
]

{ #category : 'as yet unclassified' }
SoldOut >> insertCoin: aMachine [

	aMachine state: HasCoin new
]

{ #category : 'as yet unclassified' }
SoldOut >> turnCrank: aMachine [

	Transcript show: 'It is sold out, sorry.'
]
