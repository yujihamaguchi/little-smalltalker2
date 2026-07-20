Class {
	#name : 'GumballMachineState',
	#superclass : 'Object',
	#classInstVars : [
		'instance'
	],
	#category : 'Design-Pattern-State',
	#package : 'Design-Pattern-State'
}

{ #category : 'as yet unclassified' }
GumballMachineState class >> singleton [

	^ instance ifNil: [
		instance := self new.
		instance ]
]

{ #category : 'operating' }
GumballMachineState >> ejectCoin: aMachine [

	^ self subclassResponsibility 
]

{ #category : 'operating' }
GumballMachineState >> insertCoin: aMachine [

	^ self subclassResponsibility 
]

{ #category : 'operating' }
GumballMachineState >> turnCrank: aMachine [

	^ self subclassResponsibility 
]
