Class {
	#name : #SwitchTest,
	#superclass : #TestCase,
	#category : #'DesignPatterns-Tests-Bridge'
}

{ #category : #tests }
SwitchTest >> testTurnOffDevice [

	| device switch |
	"Arrange"
	device := Device new.
	switch := Switch device: device.
	switch turnOn.
	self assert: device isPowerOn.

	"Act"
	switch turnOff.

	"Assert"
	self assert: device isPowerOff
]

{ #category : #tests }
SwitchTest >> testTurnOnDevice [

	| device switch |
	"Arrange"
	device := Device new.
	self deny: device isPowerOn.
	switch := Switch device: device.

	"Act"
	switch turnOn.
	
	"Assert"
	self assert: device isPowerOn
]
