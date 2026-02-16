Class {
	#name : #TriLevelSwitchTest,
	#superclass : #TestCase,
	#category : #'Design-Pattern-Bridge-Tests'
}

{ #category : #tests }
TriLevelSwitchTest >> testNoBrightnessAfterPowerOff [

	| light triLevelSwitch |
	"Arrange"
	light := Light new.
	triLevelSwitch := TriLevelSwitch device: light.
	triLevelSwitch turnOn.
	self assert: light brightness equals: #medium.

	"Act"
	triLevelSwitch turnOff.

	"Assert"
	self assert: light brightness isNil
]

{ #category : #tests }
TriLevelSwitchTest >> testSetLightBrightnessLevel [

	| light triLevelSwitch testCases |
	"Arrange"
	light := Light new.
	triLevelSwitch := TriLevelSwitch device: light.
	self assert: triLevelSwitch level equals: #medium.
	triLevelSwitch turnOn.
	self assert: light brightness equals: #medium.
	testCases := Dictionary newFrom: {
			             (#high -> #bright).
			             (#medium -> #medium).
			             (#low -> #dim) }.
	testCases keysAndValuesDo: [ :command :expected |
		"Act"
		triLevelSwitch perform: command.

		"Assert"
		self assert: light brightness equals: expected ]
]
