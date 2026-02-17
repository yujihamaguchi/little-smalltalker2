Class {
	#name : #TriLevelSwitchTest,
	#superclass : #TestCase,
	#category : #'Design-Pattern-Bridge-Tests'
}

{ #category : #tests }
TriLevelSwitchTest >> testNoLevelAfterPowerOff [

	| device triLevelSwitch scenarios |
	scenarios := {
		             {
			             Light.
			             #medium.
			             #brightness }.
		             {
			             Fan.
			             #mid.
			             #speed } }.
	scenarios do: [ :tuple |
		| deviceClass defaultLevel getterSelector |
		deviceClass := tuple first.
		defaultLevel := tuple second.
		getterSelector := tuple third.

		"Arrange"
		device := deviceClass new.
		triLevelSwitch := TriLevelSwitch device: device.
		triLevelSwitch turnOn.
		self assert: (device perform: getterSelector) equals: defaultLevel.

		"Act"
		triLevelSwitch turnOff.

		"Assert"
		self assert: (device perform: getterSelector) isNil ]
]

{ #category : #tests }
TriLevelSwitchTest >> testSetFanSpeedLevel [

	| fan triLevelSwitch testCases |
	"Arrange"
	fan := Fan new.
	triLevelSwitch := TriLevelSwitch device: fan.
	self assert: triLevelSwitch level class equals: Medium.
	triLevelSwitch turnOn.
	self assert: fan speed equals: #mid.
	testCases := Dictionary newFrom: {
			             (#high -> #max).
			             (#medium -> #mid).
			             (#low -> #min) }.
	testCases keysAndValuesDo: [ :command :expected |
		"Act"
		triLevelSwitch perform: command.

		"Assert"
		self assert: fan speed equals: expected ]
]

{ #category : #tests }
TriLevelSwitchTest >> testSetLightBrightnessLevel [

	| light triLevelSwitch testCases |
	"Arrange"
	light := Light new.
	triLevelSwitch := TriLevelSwitch device: light.
	self assert: triLevelSwitch level class equals: Medium.
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
