Class {
	#name : 'GumballMachine',
	#superclass : 'Object',
	#instVars : [
		'state',
		'stock'
	],
	#category : 'Design-Pattern-State',
	#package : 'Design-Pattern-State'
}

{ #category : 'as yet unclassified' }
GumballMachine >> decreaseStock [

	stock := stock - 1
]

{ #category : 'as yet unclassified' }
GumballMachine >> ejectCoin [

	state ejectCoin: self
]

{ #category : 'initialization' }
GumballMachine >> initialize [ 

	self state: NoCoin new.
	stock := 10
]

{ #category : 'as yet unclassified' }
GumballMachine >> insertCoin [

	state insertCoin: self
]

{ #category : 'accessing' }
GumballMachine >> state [

	^ state
]

{ #category : 'accessing' }
GumballMachine >> state: aState [

	state := aState
]

{ #category : 'as yet unclassified' }
GumballMachine >> stock [

	^ stock
]

{ #category : 'as yet unclassified' }
GumballMachine >> turnCrank [
	state turnCrank: self
]
