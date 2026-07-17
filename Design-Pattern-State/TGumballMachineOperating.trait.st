Trait {
	#name : 'TGumballMachineOperating',
	#category : 'Design-Pattern-State',
	#package : 'Design-Pattern-State'
}

{ #category : 'operating' }
TGumballMachineOperating >> ejectCoin: aMachine [

	^ self explicitRequirement 

	
]

{ #category : 'operating' }
TGumballMachineOperating >> insertCoin: aMachine [

	^ self explicitRequirement 
]

{ #category : 'operating' }
TGumballMachineOperating >> turnCrank: aMachine [

	^ self explicitRequirement 
]
