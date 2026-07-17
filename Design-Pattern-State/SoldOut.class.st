Class {
	#name : 'SoldOut',
	#superclass : 'Object',
	#traits : 'TGumballMachineOperating',
	#classTraits : 'TGumballMachineOperating classTrait',
	#category : 'Design-Pattern-State',
	#package : 'Design-Pattern-State'
}

{ #category : 'operating' }
SoldOut >> ejectCoin: aMachine [

	aMachine state: NoCoin new

	
]

{ #category : 'operating' }
SoldOut >> insertCoin: aMachine [

	aMachine state: HasCoin new
]

{ #category : 'operating' }
SoldOut >> turnCrank: aMachine [

	aMachine output show: 'It is sold out, sorry.'
]
