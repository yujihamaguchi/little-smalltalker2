Class {
	#name : 'HasCoin',
	#superclass : 'Object',
	#traits : 'TGumballMachineOperating',
	#classTraits : 'TGumballMachineOperating classTrait',
	#category : 'Design-Pattern-State',
	#package : 'Design-Pattern-State'
}

{ #category : 'operating' }
HasCoin >> ejectCoin: aMachine [

	aMachine state: NoCoin new

	
]

{ #category : 'operating' }
HasCoin >> insertCoin: aMachine [
]

{ #category : 'operating' }
HasCoin >> turnCrank: aMachine [
	aMachine output show: 'A gamball come out!'.
	aMachine decreaseStock.
	aMachine state: (aMachine stock = 0 ifTrue: [ SoldOut new ] ifFalse: [ NoCoin new ])
]
