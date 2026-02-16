Class {
	#name : #SwitchTest,
	#superclass : #TestCase,
	#category : #'Design-Pattern-Bridge-Tests'
}

{ #category : #tests }
SwitchTest >> testTurnOff [

	| device switch |
	"Arrange"
	device := Device new.
	switch := Switch device: device.
	switch turnOn.
	self assert: device isPowerOn.
			
	"Act"
	switch turnOff.
	
	"Assert"
	self deny: device isPowerOn
]

{ #category : #tests }
SwitchTest >> testTurnOn [

	| device switch |
	"Arrange"
	device := Device new.
	switch := Switch device: device.
	self deny: device isPowerOn.
		
	"Act"
	switch turnOn.
	
	"Assert"
	self assert: device isPowerOn
]
