Class {
	#name : #SliderSwitchTest,
	#superclass : #TestCase,
	#category : #'Design-Pattern-Bridge-Tests'
}

{ #category : #tests }
SliderSwitchTest >> testDownDeviceOutput [

	| device sliderSwitch scenarios |
	scenarios := Dictionary newFrom: {
			             (Fan -> #speed).
			             (RecordPlayer -> #volume) }.
	scenarios keysAndValuesDo: [ :deviceClass :getterSelector |
		"Arrange"
		device := deviceClass new.
		sliderSwitch := SliderSwitch device: device.
		sliderSwitch turnOn.
		self assert: (device perform: getterSelector) equals: 50.

		"Act"
		sliderSwitch downBy: 20.

		"Assert"
		self assert: (device perform: getterSelector) equals: 30 ]
]

{ #category : #tests }
SliderSwitchTest >> testNoOutputAfterPowerOff [

	| device sliderSwitch scenarios |
	scenarios := Dictionary newFrom: {
			             (Fan -> #speed).
			             (RecordPlayer -> #volume) }.
	scenarios keysAndValuesDo: [ :deviceClass :getterSelector |
		"Arrange"
		device := deviceClass new.
		sliderSwitch := SliderSwitch device: device.
		sliderSwitch turnOn.
		self assert: (device perform: getterSelector) equals: 50.

		"Act"
		sliderSwitch turnOff.

		"Assert"
		self assert: (device perform: getterSelector) isNil ]
]

{ #category : #tests }
SliderSwitchTest >> testUpDeviceOutput [

	| device sliderSwitch scenarios |
	scenarios := Dictionary newFrom: {
			             (Fan -> #speed).
			             (RecordPlayer -> #volume) }.
	scenarios keysAndValuesDo: [ :deviceClass :getterSelector |
		"Arrange"
		device := deviceClass new.
		sliderSwitch := SliderSwitch device: device.
		sliderSwitch turnOn.
		self assert: (device perform: getterSelector) equals: 50.

		"Act"
		sliderSwitch upBy: 20.

		"Assert"
		self assert: (device perform: getterSelector) equals: 70 ]
]
