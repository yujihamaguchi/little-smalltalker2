Class {
	#name : 'HasCoin',
	#superclass : 'Object',
	#traits : 'TGumballMachineOperating',
	#classTraits : 'TGumballMachineOperating classTrait',
	#category : 'Design-Pattern-State',
	#package : 'Design-Pattern-State'
}

{ #category : 'as yet unclassified' }
HasCoin >> ejectCoin: aMachine [

	aMachine state: NoCoin new

	
]

{ #category : 'as yet unclassified' }
HasCoin >> insertCoin: aMachine [
]

{ #category : 'as yet unclassified' }
HasCoin >> turnCrank: aMachine [
	Transcript show: 'A gamball come out!'.
	aMachine decreaseStock.
	aMachine state: (aMachine stock isZero ifTrue: [ SoldOut new ] ifFalse: [NoCoin new ])
]
