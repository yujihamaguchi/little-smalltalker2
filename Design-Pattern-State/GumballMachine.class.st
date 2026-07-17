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

	stock := stock - 1
]

{ #category : 'operating' }
GumballMachine >> ejectCoin [

	state ejectCoin: self
]

{ #category : 'initialization' }
GumballMachine >> initialize [ 

	self state: NoCoin new.
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

{ #category : 'operating' }
GumballMachine >> turnCrank [

	state turnCrank: self
]
