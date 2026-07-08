Class {
	#name : 'GumballMachine',
	#superclass : 'Object',
	#instVars : [
		'state'
	],
	#category : 'Design-Pattern-State',
	#package : 'Design-Pattern-State'
}

{ #category : 'initialization' }
GumballMachine >> initialize [ 

	state := NoCoin new.
	
]

{ #category : 'as yet unclassified' }
GumballMachine >> insertCoin [

	state := HasCoin new
]

{ #category : 'accessing' }
GumballMachine >> state [

	^ state
]
