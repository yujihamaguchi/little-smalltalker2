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

	state := NoCoin new.
]

{ #category : 'initialization' }
GumballMachine >> initialize [ 

	state := NoCoin new.
	stock := 10
]

{ #category : 'as yet unclassified' }
GumballMachine >> insertCoin [

	state := HasCoin new
]

{ #category : 'accessing' }
GumballMachine >> state [

	^ state
]

{ #category : 'as yet unclassified' }
GumballMachine >> stock [

	^ stock
]

{ #category : 'as yet unclassified' }
GumballMachine >> turnCrank [
self state class == HasCoin
	ifTrue: [
			Transcript show: 'A gamball come out!'.
			self decreaseStock.
			state := stock isZero ifTrue: [ SoldOut new ] ifFalse: [NoCoin new ] ]
	ifFalse: [
	Transcript show: 'Please insert coin before turning crank.' ]
]
