Class {
	#name : 'GumballMachine',
	#superclass : 'Object',
	#instVars : [
		'state',
		'stock',
		'output'
	],
	#category : 'Design-Pattern-State',
	#package : 'Design-Pattern-State'
}

{ #category : 'instance creation' }
GumballMachine class >> output: anOutput [

	^ self new output: anOutput; yourself 
]

{ #category : 'operating' }
GumballMachine >> decreaseStock [

	self stock: ((stock - 1) max: 0)
]

{ #category : 'operating' }
GumballMachine >> ejectCoin [

	state ejectCoin: self
]

{ #category : 'initialization' }
GumballMachine >> initialize [ 

	self state: NoCoin singleton.
	stock := 10
]

{ #category : 'operating' }
GumballMachine >> insertCoin [

	state insertCoin: self
]

{ #category : 'accessing' }
GumballMachine >> output [ 

	^ output
]

{ #category : 'initialization' }
GumballMachine >> output: anOutput [

	output := anOutput.
	^ self
]

{ #category : 'accessing' }
GumballMachine >> state [

	^ state
]

{ #category : 'accessing' }
GumballMachine >> state: aState [

	state := aState
]

{ #category : 'accessing' }
GumballMachine >> stock [

	^ stock
]

{ #category : 'accessing' }
GumballMachine >> stock: aNumber [

	stock := aNumber.
	stock = 0 ifTrue: [ self state: SoldOut singleton ].
]

{ #category : 'operating' }
GumballMachine >> turnCrank [

	state turnCrank: self
]
