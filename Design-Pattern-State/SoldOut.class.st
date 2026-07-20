Class {
	#name : 'SoldOut',
	#superclass : 'GumballMachineState',
	#category : 'Design-Pattern-State',
	#package : 'Design-Pattern-State'
}

{ #category : 'operating' }
SoldOut >> ejectCoin: aMachine [

	"no op"

	
]

{ #category : 'operating' }
SoldOut >> insertCoin: aMachine [

	"no op"
]

{ #category : 'operating' }
SoldOut >> turnCrank: aMachine [

	aMachine output show: 'It is sold out, sorry.'
]
